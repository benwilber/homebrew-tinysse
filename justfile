# set shell := ["bash", "-euo", "pipefail", "-c"]

render version:
    #!/bin/bash
    MACOS_X86_64_SHA256=$(curl -Ls https://github.com/benwilber/tinysse/releases/download/v{{ version }}/macos-x86_64.tar.gz.sha256 | awk '{print $1}')
    MACOS_AARCH64_SHA256=$(curl -Ls https://github.com/benwilber/tinysse/releases/download/v{{ version }}/macos-aarch64.tar.gz.sha256 | awk '{print $1}')

    export TINYSSE_VERSION={{ version }}
    export TINYSSE_MACOS_X86_64_SHA256="$MACOS_X86_64_SHA256"
    export TINYSSE_MACOS_AARCH64_SHA256="$MACOS_AARCH64_SHA256"

    minijinja-cli --env < tinysse-bin.template.rb

release version:
    #!/bin/bash -euo pipefail
    just render {{ version }} > HomebrewFormula/tinysse-bin.rb
    git commit -am "Release v{{ version }}"
    git tag -a v{{ version }} -m v{{ version }}
    git push --tags origin main
