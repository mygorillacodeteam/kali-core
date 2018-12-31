test_alert_danger_returns_red_hello_world_clear(){
	local result=$(alert_danger "hello world")
	expect_equal $LINENO "$result" "${RED}! hello world${CLEAR}"
}
