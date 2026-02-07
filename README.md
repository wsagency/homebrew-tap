# homebrew-tap

Homebrew tap for [clamp](https://github.com/wsagency/claude-move-project) (**CL**aude **A**I **M**ove **P**roject).

## Installation

```bash
brew install wsagency/tap/clamp
```

Or tap first, then install:

```bash
brew tap wsagency/tap
brew install clamp
```

## Formulae

| Formula | Description |
|---------|-------------|
| clamp | Move, fix, list, verify, and manage Claude Code projects |

## Updating the formula after a new release

After merging a PR and creating a new release in `wsagency/claude-move-project`:

1. Bump `VERSION` in `clamp`, commit, and push to main
2. Create a GitHub release/tag (e.g. `gh release create v1.4.0 --title "v1.4.0" --generate-notes`)
3. Get the sha256 of the new tarball:
   ```bash
   curl -sL https://github.com/wsagency/claude-move-project/archive/refs/tags/v1.4.0.tar.gz | shasum -a 256
   ```
4. Update `Formula/clamp.rb` in this repo with the new `url` and `sha256`
5. Commit and push to this repo
6. Users can then upgrade with:
   ```bash
   brew update && brew upgrade clamp
   ```
