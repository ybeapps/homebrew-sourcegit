# SourceGit Homebrew Tap

This repository provides Homebrew packages for installing SourceGit on macOS and Linux.

## Installation

First, add the tap:

```shell
brew tap ybeapps/homebrew-sourcegit
```

### macOS

Install via Cask (signed and notarized):

```shell
brew install --cask sourcegit
```

### Linux

Install via Formula (downloads from Github releases):

```shell
brew install sourcegit
```

**Note:** You might need FUSE.

Try running `sourcegit`. If FUSE is missing, you'll get an error like "cannot mount AppImage" or similar. Then either:

 - Install FUSE (`sudo dnf install fuse fuse-libs` on Fedora)
 - Or use the workaround: `sourcegit --appimage-extract-and-run`

Most modern Linux distros have FUSE by default, so users likely won't hit this issue.


---

Source code: [SourceGit repo](https://github.com/sourcegit-scm/sourcegit)
