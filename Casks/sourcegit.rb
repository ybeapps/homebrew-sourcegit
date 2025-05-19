cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.18"
  sha256 arm:   "84181143bb90f4ab392a819067662c4cebce886c2c309c03b65c1caa7c359030",
         intel: "a8201ff35dc0d8ca8f7ed8f47ccfaf53eb03beba6173d67f41db8599d4f5fc33"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
