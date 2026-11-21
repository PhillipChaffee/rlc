# rlc

A tiny media player in Rust.

## Development

```bash
make setup   # install lint tools, enable the pre-commit hook
make fmt     # format Rust and TOML
make lint    # rustfmt, taplo, typos, clippy (-D warnings), cargo-deny
make test
make ci      # lint + test, exactly what CI runs
```
