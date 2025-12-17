cask "sourcegit" do
  version "2025.40"
  sha256 "851904bace76183689ed0c5717e26e7fde4d4fef72b358657c2b62957de92372"
  
  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v2025.40-signed/SourceGit-v2025.40-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"
  
  # Signed and notarized - no --no-quarantine needed!
  app "SourceGit.app"
  
  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
