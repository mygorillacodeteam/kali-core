source "lib/import_all.sh"

all_lib_cli_globals_tests(){

	import_all "lib/cli/globals.sh"
	import_all "tests/lib/cli/globals"

	test_globals_version_equals_version
	test_globals_verbose_equals_verbose
	test_globals_user_equals_arc
	test_globals_home_equals_home

}

all_lib_cli_globals_tests "$@"