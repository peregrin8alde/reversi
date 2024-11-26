#!/bin/bash

git clone https://github.com/bats-core/bats-core.git
bats-core/install.sh /usr/local

mkdir -p /usr/local/lib/bats/test_helper
git clone https://github.com/bats-core/bats-support.git /usr/local/lib/bats/test_helper/bats-support
git clone https://github.com/bats-core/bats-assert.git /usr/local/lib/bats/test_helper/bats-assert
git clone https://github.com/bats-core/bats-file.git /usr/local/lib/bats/test_helper/bats-file


exit 0
