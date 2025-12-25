cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.40"
  sha256 arm:   "b0971c39074ede3b79aa5bdbd8716e7bed8c379323f817d21a7ac1a42a07688f",
         intel: "5698c2cd6f2fe024ddf81196b13b8775b40303b3bf71e6892ad91344645045a0"

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
