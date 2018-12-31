source "lib/import_all.sh"

all_lib_cli_colors_tests(){

	import_all "tests/lib/cli/colors"

	test_colors_clear_equals_clear
	test_colors_white_equals_white
	test_colors_red_equals_red
	test_colors_green_equals_green
	test_colors_yellow_equals_yellow
	test_colors_blue_equals_blue
	test_colors_magenta_equals_magenta
	test_colors_cyan_equals_cyan
	
}

all_lib_cli_colors_tests "$@"
