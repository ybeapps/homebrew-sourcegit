cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.37"
  sha256 arm:   "4c3654859845924f959e05881885125d3261c95107436c5d3a5437ebd1883a84",
         intel: "564d3b6c82e8b7b06d227be72e72a7658633f940889a3c5ec606859ebf49bfb9"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
