test_alert_warn_returns_yellow_hello_world_clear(){
	local result=$(alert_warn "hello world")
	expect_equal $LINENO "$result" "${YELLOW}* hello world${CLEAR}"
}
