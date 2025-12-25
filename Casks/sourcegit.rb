cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.40"
  sha256 arm:   "be43f656e275d80d688f78480305343d19fc6c7c35a6aec32f11b69aec069530",
         intel: "35c16d764a53f3b429a55d6fcdc94394c91b8926d5ffe91ed3c8ad5f254d499a"

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

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
