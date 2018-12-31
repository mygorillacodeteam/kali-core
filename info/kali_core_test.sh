kali_core_test(){

case "$1" in

		all)
			source "tests/all_lib_tests.sh"
			exit
		;;

		lib)
			source "tests/all_lib_tests.sh"
			exit
		;;

    cli)
			source "tests/all_lib_cli_tests.sh"
			exit
		;;

		colors)
			source "tests/all_lib_cli_colors_tests.sh"
			exit
		;;

		styles)
			source "tests/all_lib_cli_styles_tests.sh"
			exit
		;;

    globals)
			source "tests/all_lib_cli_globals_tests.sh"
			exit
		;;

    queries)
			source "tests/all_lib_queries_tests.sh"
			exit
		;;

    alert)
			source "tests/all_lib_alert_tests.sh"
			exit
		;;

		*)
      kali_core_test_help
			exit
		;;

	esac

}
