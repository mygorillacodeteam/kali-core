is_key(){

	local keyname="$1"
	local keylist="$(apt-key list)"

	local keycheck=$(echo -en "$keylist" | grep -i "@google.com" > /dev/null 2>&1; echo $?)

	if [ "$keycheck" -ne "0" ]; then
		return 1
	else
		return 0
	fi

}
