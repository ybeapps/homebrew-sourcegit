# SourceGit Homebrew Cask

This repository provides a Homebrew Cask for installing SourceGit.

Run the following command to add the `ybeapps/sourcegit` tap to your Homebrew:

```shell
brew tap ybeapps/sourcegit
# brew tap sourcegit-scm/sourcegit
```

Once the tap is added, install SourceGit with:

```shell
brew install --cask --no-quarantine sourcegit
```

Note: The `--no-quarantine` option in Homebrew prevents macOS from applying a quarantine attribute to downloaded files, which can lead to the system showing a warning message like `SourceGit is damaged and can't be opened`.
