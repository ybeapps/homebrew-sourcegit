cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.24"
  sha256 arm:   "ec6397ab2a86f9da9b34ad3a97b9b08527a2416c416c6cd43c4f1dd781613e35",
         intel: "ad662bd6199b1c7078db5ae13f2b683bc0f9e6a138e456e3233b421585d9ff6d"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"
  binary "#{appdir}/SourceGit.app/Contents/MacOS/SourceGit", target: "sourcegit"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
