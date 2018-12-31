test_alert_returns_normal_hello_world_clear(){
	local result=$(alert "hello world")
	expect_equal $LINENO "$result" "${NORMAL}hello world${CLEAR}"
}
