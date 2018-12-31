kali_core_uninstall(){

  local directory=$PWD

  is_root "${LINENO}"

  export VERBOSE=true

  ! is_link "/usr/local/bin/kali-core" || {
    alert_info "Removing link /usr/local/bin/kali-core"
    command unlink "/usr/local/bin/kali-core"
  }

  ! is_executable "${directory}/bin/kali-core" || {
    alert_info "Removing executable attribute from ${directory}/bin/kali-core"
    command chmod 644 "${directory}/bin/kali-core"
  }

  alert_success "Successfully uninstalled kali-core"

}
