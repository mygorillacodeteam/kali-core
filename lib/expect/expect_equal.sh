expect_equal() {

	local basefile=$(basename $0)
	local baseline="$1"
	local actual=$(echo -e "$2")
	local expected=$(echo -e "$3")
	local actual_split=""
	local expected_split=""
	local actual_result=""
	local expected_result=""

	for (( i=0; i<"${#actual}"; i++ ))
	do
		actual_split[$i]=$(printf "%d\n" "'${actual:$i:1}'")
		expected_split[$i]=$(printf "%d\n" "'${expected:$i:1}'")
	done

	actual_result="${actual_split[@]}"
	expected_result="${expected_split[@]}"

	if [ "$actual_result" != "$expected_result" ]; then
		alert "[ ${RED}FAIL${CLEAR} ] ${FUNCNAME[1]}"
		alert
		alert "  ${MAGENTA}File.....: ${basefile}, Line: ${baseline}${CLEAR}"
		alert
		alert "  ${CYAN}Expected.: ${expected}${CLEAR}"
		alert "  ${RED}Actual...: ${actual}${CLEAR}"
		alert
		return 1
	fi
	
	echo -e "[ ${GREEN}PASS${CLEAR} ] ${FUNCNAME[1]}" 
	return 0
	
}
