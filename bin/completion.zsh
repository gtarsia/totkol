# Tab completion for bin/{diff-asm,score,diff,show,perm,why} and report, run from the repo
# root.
# In ~/.zshrc, after compinit: source ~/git/lodis-qol/bin/completion.zsh
_lodis_scripts() {
	local cmd=${words[1]:t}
	[[ $cmd = report ]] && { _lodis_report; return }
	if [[ $PREFIX = -* ]]; then
		case $cmd in
		diff) compadd -- --logic --context --nvim --qol -h ;;
		why) compadd -- --orig -v -h ;;
		perm) compadd -- --no-vars --keep-types --all --context -j --permuter -h ;;
		*) compadd -- -h ;;
		esac
		return
	fi
	if [[ $cmd = diff ]] && (( CURRENT <= 3 )); then
		# Only the NONMATCHING ones: the asm/non_matching/NAME/FUNC.inc that src/NAME.c includes.
		local -a list
		if (( CURRENT == 2 )); then
			list=(${(f)"$(grep -lE 'asm/non_matching/' src/*.c 2>/dev/null)"}); list=(${list:t:r})
			_describe 'file with NONMATCHING functions' list
		else
			list=(${(f)"$(grep -ohP 'asm/non_matching/[^/]+/\K[^/"]+(?=\.inc)' src/${words[2]}.c 2>/dev/null)"})
			_describe 'NONMATCHING function' list
		fi
	elif (( CURRENT == 2 )); then
		local -a names=(src/*.c(N:t:r))
		_describe 'file in src/' names
	elif [[ $cmd = (diff-asm|score) ]]; then
		(( CURRENT == 3 )) && _files -g '*.s'
	elif (( CURRENT == 3 )); then
		# Functions defined in src/NAME.c.
		local -a funcs=(${(f)"$(grep -oP '^[A-Za-z_][\w \*]*?\b\K\w+(?=\()' src/${words[2]}.c 2>/dev/null | sort -u)"})
		_describe 'function' funcs
	elif [[ $cmd = why ]]; then
		(( CURRENT == 5 )) && compadd orig
	elif [[ $cmd = perm ]]; then
		(( CURRENT == 4 )) && compadd search continue best pick
	elif [[ $cmd = diff ]] && (( CURRENT <= 5 )); then
		# FROM/TO: functions the original calls.
		local -a calls=(${(f)"$(grep -ohP '\bbl \K\w+' asm/non_matching/${words[2]}/${words[3]}.inc 2>/dev/null | sort -u)"})
		_describe 'callee (FROM/TO)' calls
	fi
}
# report takes its options anywhere, so NAME and FUNC are the 1st and 2nd words that aren't.
_lodis_report() {
	case ${words[CURRENT-1]} in
	--vs)
		local -a refs=(${(f)"$(git for-each-ref --format='%(refname:short)' refs/heads refs/tags 2>/dev/null)"})
		_describe 'git revision' refs
		return ;;
	-o) _files -g '*.html'; return ;;
	esac
	if [[ $PREFIX = -* ]]; then
		compadd -- --vs --qol --matching -o -D -h
		return
	fi
	local i n=0 name
	for (( i = 2; i < CURRENT; i++ )); do
		[[ ${words[i]} = -* ]] && { [[ ${words[i]} = (--vs|-o) ]] && (( i++ )); continue }
		(( n++ )); (( n == 1 )) && name=${words[i]}
	done
	if (( n == 0 )); then
		local -a names=(src/*.c(N:t:r))
		_describe 'file in src/' names
	elif (( n == 1 )); then
		local -a funcs=(${(f)"$(grep -oP '^[A-Za-z_][\w \*]*?\b\K\w+(?=\()' src/$name.c 2>/dev/null | sort -u)"})
		_describe 'function' funcs
	fi
}
compdef _lodis_scripts {,bin/,./bin/}{diff-asm,score,diff,show,perm,why,report}
