cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.03"
  sha256 arm:   "098c3a0159e2eab0dd6b34448139242c889cbe5343820a62fb0a14cb071864c0",
         intel: "43f04fca605920822e92e985b29ee2af560c52a8a0760dd96408deccfda8487c"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
