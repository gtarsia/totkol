# Tab completion for scripts/{fdiff,score,ndiff,nsrc,perm,why}.sh, run from the repo root.
# In ~/.zshrc, after compinit: source ~/git/lodis-qol/scripts/completion.zsh
_lodis_scripts() {
	local cmd=${words[1]:t}
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
compdef _lodis_scripts {,scripts/,./scripts/}{fdiff,score,ndiff,nsrc,perm,why}.sh
