is_debug(){

    if [ "$DEBUG" != "false" ]; then

        return 1

    fi

    return 0
    
}
