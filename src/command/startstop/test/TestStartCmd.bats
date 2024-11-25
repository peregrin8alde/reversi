setup() {
    bats_load_library 'test_helper/bats-support/load.bash'
    bats_load_library 'test_helper/bats-assert/load.bash'
    # get the containing directory of this file
    # use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
    # as those will point to the bats executable's location or the preprocessed file respectively
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"

    TARGETDIR="${TARGETDIR:-$DIR/../_build}"
    PATH="${TARGETDIR}/bin:${TARGETDIR}/lib:${DIR}/stub:$PATH"
}

teardown() {
    true
}

@test "test 01" {
    run bash -c "echo -e \"1\n2\n\" | bash StartCmd.sh"
    assert_success
    assert_line --index 0 '1'
    assert_line --index 1 '2'
}
