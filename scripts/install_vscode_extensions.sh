extensions=$(cat ./.vscode/list-extensions.txt)

for extension in $extensions; do
	echo "Install ${extension} ..."
	code --install-extension ${extension}
done
