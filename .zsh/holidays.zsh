today=$(date '+%m-%d')

if [[ "$today" = '12-24' || "$today" = '12-25' ]]; then
	PURE_PROMPT_SYMBOL="🎅.oO"
	PURE_GIT_UP_ARROW="🎄"
	echo '🎅 Happy Holidays! 🎄'
fi
