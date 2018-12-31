is_executable() {

    local file="$1"

    if [[ ! -x "$file" ]]; then
        
        return 1

    fi

    return 0

}
