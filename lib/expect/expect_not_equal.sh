expect_not_equal() {

	local basefile=$(basename $0)
	local baseline="$1"
	local actual=$(echo -e "$2")
	local not_expected=$(echo -e "$3")
	local actual_split=""
	local not_expected_split=""
	local actual_result=""
	local not_expected_result=""

	for (( i=0; i<"${#actual}"; i++ ))
	do
		actual_split[$i]=$(printf "%d\n" "'${actual:$i:1}'")
		not_expected_split[$i]=$(printf "%d\n" "'${not_expected:$i:1}'")
	done

	actual_result="${actual_split[@]}"
	not_expected_result="${not_expected_split[@]}"

	if [ "$actual_result" == "$expected_result" ]; then
		alert "[ ${RED}FAIL${CLEAR} ] ${FUNCNAME[1]}"
		alert
		alert "  ${MAGENTA}File.........: ${basefile}, Line: ${baseline}${CLEAR}"
		alert
		alert "  ${CYAN}Not Expected.: ${not_expected_result}${CLEAR}"
		alert "  ${RED}Actual.......: ${actual_result}${CLEAR}"
		alert
		return 1
	fi
	
	echo -e "[ ${GREEN}PASS${CLEAR} ] ${FUNCNAME[1]}" 
	return 0
	
}
