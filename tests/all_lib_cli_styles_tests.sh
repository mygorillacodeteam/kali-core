source "lib/import_all.sh"

all_lib_cli_styles_tests(){

	import_all "tests/lib/cli/styles"

	test_styles_blink_equals_blink
	test_styles_bold_equals_bold
	test_styles_normal_equals_normal
	test_styles_tick_equals_tick
	test_styles_underline_equals_underline

}

all_lib_cli_styles_tests "$@"
