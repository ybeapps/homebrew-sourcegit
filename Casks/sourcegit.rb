cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.21"
  sha256 arm:   "f9add67f6630ebd6d4c7524a8f1d37e4e61a39fcd7d4449e60270a9cca605400",
         intel: "dc4301574b4558e311588bbed1486721e96ab1bb226fcad810b9391e43fc696b"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
