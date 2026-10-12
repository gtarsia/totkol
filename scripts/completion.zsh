# Tab completion for scripts/{fdiff,score,ndiff,nsrc,perm,why}.sh and report.py, run from the repo
# root.
# In ~/.zshrc, after compinit: source ~/git/lodis-qol/scripts/completion.zsh
_lodis_scripts() {
	local cmd=${words[1]:t}
	[[ $cmd = report.py ]] && { _lodis_report; return }
	if [[ $PREFIX = -* ]]; then
		case $cmd in
		ndiff.sh) compadd -- --logic --context --nvim --qol -h ;;
		why.sh) compadd -- --orig -v -h ;;
		perm.sh) compadd -- --no-vars --keep-types --all --context -j --permuter -h ;;
		*) compadd -- -h ;;
		esac
		return
	fi
	if (( CURRENT == 2 )); then
		local -a names=(src/*.c(N:t:r))
		_describe 'file in src/' names
	elif [[ $cmd = (fdiff|score).sh ]]; then
		(( CURRENT == 3 )) && _files -g '*.s'
	elif (( CURRENT == 3 )); then
		# Functions defined in src/NAME.c.
		local -a funcs=(${(f)"$(grep -oP '^[A-Za-z_][\w \*]*?\b\K\w+(?=\()' src/${words[2]}.c 2>/dev/null | sort -u)"})
		_describe 'function' funcs
	elif [[ $cmd = why.sh ]]; then
		(( CURRENT == 5 )) && compadd orig
	elif [[ $cmd = perm.sh ]]; then
		(( CURRENT == 4 )) && compadd search continue best pick
	elif [[ $cmd = ndiff.sh ]] && (( CURRENT <= 5 )); then
		# FROM/TO: functions the original calls.
		local -a calls=(${(f)"$(grep -ohP '\bbl \K\w+' asm/non_matching/${words[2]}/${words[3]}.inc 2>/dev/null | sort -u)"})
		_describe 'callee (FROM/TO)' calls
	fi
}
# report.py takes its options anywhere, so NAME and FUNC are the 1st and 2nd words that aren't.
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
compdef _lodis_scripts {,scripts/,./scripts/}{fdiff,score,ndiff,nsrc,perm,why}.sh {,scripts/,./scripts/}report.py
