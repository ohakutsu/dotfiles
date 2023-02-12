if ! which pbcopy 1>/dev/null 2>&1; then
	alias pbcopy="xsel --clipboard --input"
fi
