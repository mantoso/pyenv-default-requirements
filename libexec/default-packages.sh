#!/bin/env sh
install_default_packages() {
  # Only install default packages after successfully installing Python.
  [ "$STATUS" = "0" ] || return 0

  PYENV_VERSION=$1

  local requirements_file=${PYENV_ROOT}/default-packages

  if [ -f "$requirements_file" ]; then
    local args=( -r "$requirements_file" )

    # Invoke `pip install` in the just-installed Python.
    pyenv-exec pip install "${args[@]}" || {
      echo "pyenv: error installing packages from  \`$requirements_file'"
    } >&2
  fi
}