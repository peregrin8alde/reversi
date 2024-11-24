setup() {
    bats_load_library 'test_helper/bats-support/load.bash'
    bats_load_library 'test_helper/bats-assert/load.bash'
    # get the containing directory of this file
    # use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
    # as those will point to the bats executable's location or the preprocessed file respectively
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH:${DIR}/stub"
}

teardown() {
    true
}

@test "test show_title 01" {
    # 変数や関数を全て export する（ bash -c でテスト対象を呼び出すため）
    set -a
    source TitleView.sh

    TitleView ${DIR}/../src/resource/Title.txt

    run bash -c "echo | show_title"
    assert_success
    # bats のバグで空行は検出できない
    assert_line --index 0 '######################'
    assert_line --index 1 '#      Reversi       #'
    assert_line --index 2 '######################'
    assert_line --index 3 'Press Enter !!'
    assert_line --index 4 'count : 0'

    set +a
}
