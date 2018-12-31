source "lib/import_all.sh"

all_lib_queries_tests(){

	import_all "tests/lib/queries"

	test_is_dir_exist_true
	test_is_dir_exist_not_true
	test_is_arguments_1_true
	test_is_arguments_1_not_true
	test_is_empty_true
	test_is_empty_not_true
	test_is_file_exist_true
	test_is_file_exist_not_true
	test_is_link_exist_true
	test_is_link_exist_not_true
	test_is_verbose_true
	test_is_verbose_not_true

}

all_lib_queries_tests "$@"
