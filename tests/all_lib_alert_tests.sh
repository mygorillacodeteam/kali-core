source "lib/import_all.sh"

all_lib_alert_tests(){

	import_all "tests/lib/alert"

	test_alert_returns_normal_hello_world_clear
	test_alert_danger_returns_red_hello_world_clear
	test_alert_info_returns_cyan_hello_world_clear
	test_alert_success_returns_green_hello_world_clear
	test_alert_warn_returns_yellow_hello_world_clear

}

all_lib_alert_tests "$@"
