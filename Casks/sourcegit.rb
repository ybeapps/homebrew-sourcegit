cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.02"
  sha256 arm:   "264bed016897e18076df5e3243260d103f056551e7c35671eaf4289c844686e2",
         intel: "7b42746ea366d1e11bf57a6c74a978e8e7b7567f9b8a6601c12a75448619b5fb"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
