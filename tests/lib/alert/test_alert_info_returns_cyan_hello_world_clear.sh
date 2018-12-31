test_alert_info_returns_cyan_hello_world_clear(){
	local result=$(alert_info "hello world")
	expect_equal $LINENO "$result" "${CYAN}> hello world${CLEAR}"
}
