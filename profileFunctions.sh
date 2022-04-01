function browse(){
	($BROWSER $@ &> /dev/null &)
	echo "Created a New Browser Window"
}
export -f browse
