fuz() {
  grep -Irn $1 *
}

fnd() {
  find . -name '*.'$2'*' -print0 |xargs -0r grep -IHn $1
}

cd() {
	builtin cd "$@"
	if [[ -e readme.md ]]; then
		clear
		echo -e "$(sed -e 's/`\(.*\)`/\\033[2m\1\\033[0m/g; s/###\(.*\)/\\033[95;4m\1\\033[0m/g; s/^#\(.*\)/\\033[95;1m\1\\033[0m/g; s/\[\(.*\)\]/\\033[94m\1\\033[0m/g' readme.md)"
	fi
}


alias msbuild="/c/Windows/Microsoft.NET/Framework64/v4.0.30319/MsBuild.exe"
alias paket="/c/tools/Paket/paket.exe"
