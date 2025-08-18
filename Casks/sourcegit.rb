cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.31"
  sha256 arm:   "0ddfdab4e7272956455a773f4b8ba2aa951785a8062509762875dc248b9e66b4",
         intel: "f30931a888e21cb6b677ecc578f4ab0c7ded98041219d0bf72d5460dfe9c12e2"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
