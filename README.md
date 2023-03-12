Neovim config for Python and Rust.

## Requirements

1. Install pylint and pyright:
```
$ pip install pylint pyright
```
2. Install rust-analyzer (https://rust-analyzer.github.io/manual.html), add path from the second command to PATH environment variable and run rust-analyzer:
```
$ rustup component add rust-analyzer
$ rustup which --toolchain stable rust-analyzer
$ rust-analyzer
```
