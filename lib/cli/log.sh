log() {

    local ts=$(timestamp)

    is_debug || echo -e "${CYAN}${ts}${CLEAR} [ ${GREEN}OK${CLEAR} ] ${1}"
    is_verbose || echo -e "${CYAN}${ts}${CLEAR} [ ${GREEN}OK${CLEAR} ] ${1}"

}