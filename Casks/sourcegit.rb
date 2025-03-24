cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.10"
  sha256 arm:   "6c42b12c198072ed53a91dfc030f5341fd3cefa958805bf88822acb0cfeacf17",
         intel: "4e2bd256084a6d5a4a26dc000e90de9b68280d3274214be247a56c9c70a37c98"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
