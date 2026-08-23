# envskill Homebrew tap

This tap distributes the [`envskill`](https://github.com/buhaistrikalo/envskill)
CLI for macOS and Linux. The formula installs a tagged, pure-Python release
wheel from GitHub and verifies it with a pinned SHA-256 checksum.

## How do I install these formulae?

```bash
brew install buhaistrikalo/envskill/envskill
```

Or tap the repository first and install the formula by name:

```bash
brew tap buhaistrikalo/envskill
brew install envskill
```

Verify the installation:

```bash
envskill --version
envskill doctor --agent all --json
```

The formula is updated when a new tagged release is published upstream.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "buhaistrikalo/envskill"
brew "envskill"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
