#!/bin/bash
set -ex

function cargo_install() {
  local name=$1
  local version=$2

  if command -v $name >/dev/null 2>&1; then
    echo "$name is already installed at $(command -v $name)"
  else
    echo "Installing $name"
    cargo install $name --version $version
  fi
}

cargo_install mdbook 0.1.1
cargo_install mdbook-linkcheck 0.1.0
