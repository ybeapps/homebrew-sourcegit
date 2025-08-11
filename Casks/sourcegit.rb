cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.30"
  sha256 arm:   "680ce236b9d5066dceec8890345bd6d59bc99dd63976d72e91ab2cf7b1ce884a",
         intel: "d05a333e8dbd13dfd53d102cf07c8576e009cc509a509b671756316cc6be5cdd"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
