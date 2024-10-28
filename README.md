# SourceGit Homebrew Cask

This repository provides a Homebrew Cask for installing SourceGit.

Run the following commands to add the `ybeapps/sourcegit` tap to your Homebrew, followed by installing SourceGit:

```shell
brew tap ybeapps/homebrew-sourcegit
brew install --cask --no-quarantine sourcegit

# TODO: in the future it might move to official repo
# brew tap sourcegit-scm/sourcegit
```

Note: The `--no-quarantine` option in Homebrew prevents macOS from applying a quarantine attribute to downloaded files, which can lead to the system showing a warning message like `SourceGit is damaged and can't be opened`.
