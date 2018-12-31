source "lib/import_all.sh"

all_lib_cli_tests(){

	import_all "tests/lib/cli"

	test_colors_clear_equals_clear
	test_colors_white_equals_white
	test_colors_red_equals_red
	test_colors_green_equals_green
	test_colors_yellow_equals_yellow
	test_colors_blue_equals_blue
	test_colors_magenta_equals_magenta
	test_colors_cyan_equals_cyan

  test_globals_version_equals_version
	test_globals_verbose_equals_verbose
	test_globals_user_equals_arc
	test_globals_home_equals_home

  test_styles_blink_equals_blink
	test_styles_bold_equals_bold
	test_styles_normal_equals_normal
	test_styles_tick_equals_tick
	test_styles_underline_equals_underline

}

all_lib_cli_tests "$@"
