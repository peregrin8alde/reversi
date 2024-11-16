# テストについて

## テストツール

bats-core を利用

- [git リポジトリ](https://github.com/bats-core/bats-core)
- [ドキュメント](https://bats-core.readthedocs.io/en/stable/index.html)

## セットアップ手順

大量のリポジトリで必要になった場合に管理が面倒なため、個別のリポジトリのサブモジュールに（ Quick installation 参照）はせずマシン自体にインストールする。

参考 : [Any OS: Installing Bats from source](https://bats-core.readthedocs.io/en/stable/installation.html#any-os-installing-bats-from-source)

以下のコマンドでインストール
（インストール先で root 権限が不要なら sudo は不要）

```
$ git clone https://github.com/bats-core/bats-core.git
$ cd bats-core
$ sudo ./install.sh /usr/local
```

アンインストールしたい場合は以下を実行

```
$ git clone https://github.com/bats-core/bats-core.git
$ cd bats-core
$ sudo ./uninstall.sh /usr/local
```

`man 1 bats` （ usage manual ）や `man 7 bats` （ writing test files manual ）でマニュアルを参照可能

以下で bats コマンドの動作確認

```
$ bats -h
Bats 1.11.0
Usage: bats [OPTIONS] <tests>
       bats [-h | -v]

  <tests> is the path to a Bats test file, or the path to a directory
  containing Bats test files (ending with ".bats")

  -c, --count               Count test cases without running any tests
  --code-quote-style <style>
                            A two character string of code quote delimiters
                            or 'custom' which requires setting $BATS_BEGIN_CODE_QUOTE and
                            $BATS_END_CODE_QUOTE. Can also be set via $BATS_CODE_QUOTE_STYLE
  --line-reference-format   Controls how file/line references e.g. in stack traces are printed:
                              - comma_line (default): a.bats, line 1
                              - colon:  a.bats:1
                              - uri: file:///tests/a.bats:1
                              - custom: provide your own via defining bats_format_file_line_reference_custom
                                        with parameters <filename> <line>, store via `printf -v "$output"`
  -f, --filter <regex>      Only run tests that match the regular expression
  --filter-status <status>  Only run tests with the given status in the last completed (no CTRL+C/SIGINT) run.
                            Valid <status> values are:
                              failed - runs tests that failed or were not present in the last run
                              missed - runs tests that were not present in the last run
  --filter-tags <comma-separated-tag-list>
                            Only run tests that match all the tags in the list (&&).
                            You can negate a tag via prepending '!'.
                            Specifying this flag multiple times allows for logical or (||):
                            `--filter-tags A,B --filter-tags A,!C` matches tags (A && B) || (A && !C)
  -F, --formatter <type>    Switch between formatters: pretty (default),
                              tap (default w/o term), tap13, junit, /<absolute path to formatter>
  --gather-test-outputs-in <directory>
                            Gather the output of failing *and* passing tests
                            as files in directory (if existing, must be empty)
  -h, --help                Display this help message
  -j, --jobs <jobs>         Number of parallel jobs (requires GNU parallel or shenwei356/rush)
  --parallel-binary-name    Name of parallel binary
  --no-tempdir-cleanup      Preserve test output temporary directory
  --no-parallelize-across-files
                            Serialize test file execution instead of running
                            them in parallel (requires --jobs >1)
  --no-parallelize-within-files
                            Serialize test execution within files instead of
                            running them in parallel (requires --jobs >1)
  --report-formatter <type> Switch between reporters (same options as --formatter)
  -o, --output <dir>        Directory to write report files (must exist)
  -p, --pretty              Shorthand for "--formatter pretty"
  --print-output-on-failure Automatically print the value of `$output` on failed tests
  -r, --recursive           Include tests in subdirectories
  --show-output-of-passing-tests
                            Print output of passing tests
  -t, --tap                 Shorthand for "--formatter tap"
  -T, --timing              Add timing information to tests
  -x, --trace               Print test commands as they are executed (like `set -x`)
  --verbose-run             Make `run` print `$output` by default
  -v, --version             Display the version number

  For more information, see https://github.com/bats-core/bats-core
```
