kali_core_install(){

  local directory=$PWD

  is_root "${LINENO}"

  export VERBOSE=true

  is_link "/usr/local/bin/kali-core" || {
    alert_info "Creating link /usr/local/bin/kali-core"
    command ln -s "${directory}/bin/kali-core" "/usr/local/bin/kali-core"
  }

  is_executable "${directory}/bin/kali-core" || {
    alert_info "Adding executable attribute to ${directory}/bin/kali-core"
    command chmod +x "${directory}/bin/kali-core"
  }

  alert_success "Successfully installed kali-core"

}
