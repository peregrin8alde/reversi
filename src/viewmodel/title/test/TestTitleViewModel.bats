setup() {
    bats_load_library 'test_helper/bats-support/load.bash'
    bats_load_library 'test_helper/bats-assert/load.bash'
    # get the containing directory of this file
    # use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
    # as those will point to the bats executable's location or the preprocessed file respectively
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"

    BASE_DIR=${DIR}/stub
    source ${DIR}/../src/TitleViewModel.sh

    TitleViewModel
}

@test "test event_enter 01" {
    run event_enter
    assert_output '1'
}
