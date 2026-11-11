cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.24"
  sha256 arm:   "d1d17211e905096835dd668909b9378903229c7d15054b725502952c7fe0b62f",
         intel: "ce6ba964167094b0871ac421ff8b4ce6b429e9658ff1eacc9fd84b4ac03d1122"

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
