# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Homebrew tap that distributes SourceGit (a Git GUI client) with proper macOS code signing and notarization. The repository automatically:
1. Detects new SourceGit releases from the upstream repository
2. Downloads, signs, and notarizes the macOS app
3. Publishes signed DMG files as GitHub releases
4. Updates the Homebrew cask formula to point to the signed version

The tap URL is `ybeapps/homebrew-sourcegit` and users install with:
```shell
brew tap ybeapps/homebrew-sourcegit
brew install --cask sourcegit
```

## Repository Structure

- `Casks/sourcegit.rb` - Homebrew cask formula that defines how to install SourceGit
- `.github/workflows/update_tap_upon_new_version.yml` - GitHub Actions workflow that automates signing and publishing

## Cask Formula (`Casks/sourcegit.rb`)

The cask formula follows Homebrew's Ruby DSL format:
- `version` - The version number without the 'v' prefix (e.g., "2025.40")
- `sha256` - SHA256 checksum of the DMG file for integrity verification
- `url` - Points to the signed DMG in this repo's GitHub releases (format: `v{VERSION}-signed` tag)
- `app "SourceGit.app"` - Installs the application to `/Applications`
- `zap trash:` - Defines user data locations to remove when uninstalling with `brew zap`

The cask points to signed DMG files hosted in this repository's releases, NOT the upstream SourceGit repository.

## GitHub Actions Workflow

The workflow (`update_tap_upon_new_version.yml`) runs on:
- Schedule: 4 times daily (00:00, 06:00, 12:00, 18:00 UTC)
- Manual trigger: Via workflow_dispatch with optional version override and force update

### Workflow Process

1. **Version Detection**: Fetches latest release from `sourcegit-scm/sourcegit` via GitHub API or uses manually specified version
2. **Version Comparison**: Compares with current version in `sourcegit.rb`, skips if unchanged (unless forced)
3. **Check for Existing Signed Release**: Looks for `{VERSION}-signed` tag in this repo's releases
4. **Download & Extract**: Downloads ARM64 zip from upstream (`sourcegit_{VERSION}.osx-arm64.zip`)
5. **Code Signing**:
   - Imports Apple Developer ID certificate from secrets
   - Creates entitlements file with JIT and runtime permissions
   - Signs frameworks, dylibs, executables, and app bundle with `codesign`
   - Uses `--options runtime` and `--timestamp` for notarization compatibility
6. **Create DMG**: Packages signed app into DMG with `hdiutil` and signs the DMG
7. **Notarize**: Submits to Apple's notary service using `xcrun notarytool`, waits up to 30 minutes, and staples ticket
8. **Calculate SHA256**: Computes checksum for the cask formula
9. **Publish Release**: Creates GitHub release with tag `{VERSION}-signed` containing the signed DMG
10. **Update Cask**: Rewrites `Casks/sourcegit.rb` with new version, SHA256, and URL pointing to the signed release

### Required GitHub Secrets

The workflow requires these secrets:
- `APPLE_CERTIFICATE_BASE64` - Base64-encoded .p12 certificate file
- `APPLE_CERTIFICATE_PASSWORD` - Password for the .p12 file
- `APPLE_IDENTITY` - Developer ID identity name (e.g., "Developer ID Application: Your Name (TEAMID)")
- `APPLE_ID` - Apple ID email for notarization
- `APPLE_APP_PASSWORD` - App-specific password for Apple ID
- `APPLE_TEAM_ID` - 10-character team ID
- `KEYCHAIN_PASSWORD` - Temporary keychain password (can be any value)
- `GH_TOKEN` - GitHub personal access token with repo permissions for committing

## Making Changes to the Cask

When manually updating the cask formula:
1. Update `version` to match the version number (without 'v' prefix)
2. Update `sha256` with the checksum of the new DMG
3. Update `url` to point to the correct signed release tag and filename
4. Ensure the URL format is: `https://github.com/ybeapps/homebrew-sourcegit/releases/download/v{VERSION}-signed/SourceGit-v{VERSION}-signed.dmg`

The workflow typically handles updates automatically, but manual intervention may be needed if:
- The workflow fails during signing/notarization
- A specific version needs to be published outside the schedule
- Secret credentials need to be rotated

## Testing the Cask Locally

```shell
# Audit the cask for style issues
brew audit --cask sourcegit

# Install locally from this tap
brew install --cask --force ybeapps/sourcegit/sourcegit

# Test uninstall
brew uninstall --cask sourcegit

# Test zap (removes user data)
brew uninstall --zap --cask sourcegit
```

## Debugging Workflow Issues

Common failure points:
- **Version detection fails**: Check GitHub API rate limits or upstream repo accessibility
- **Download fails**: Verify upstream release exists and has the ARM64 zip file
- **Signing fails**: Check certificate expiration, keychain setup, or identity name
- **Notarization fails**: Verify Apple credentials, team ID, app-specific password, or entitlements
- **Push fails**: Verify GH_TOKEN permissions and git configuration

To manually trigger with a specific version:
1. Go to Actions tab
2. Select "Auto Sign and Update SourceGit" workflow
3. Click "Run workflow"
4. Enter version (e.g., "v8.40") or leave empty for latest
5. Check "Force update" to re-sign even if version exists
