cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.34"
  sha256 arm:   "bd560531a0a8fde2a0f7604130dc3aecc1202969d5cf8b1dd0a0c274d3def731",
         intel: "2074db01e2a472cf70c32a59ade5c4f862b53fc5b60fa3033ed6cf269b64438d"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
