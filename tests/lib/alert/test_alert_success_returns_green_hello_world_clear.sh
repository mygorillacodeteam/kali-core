test_alert_success_returns_green_hello_world_clear(){
	local result=$(alert_success "hello world")
	expect_equal $LINENO "$result" "${GREEN}${TICK} hello world${CLEAR}"
}
