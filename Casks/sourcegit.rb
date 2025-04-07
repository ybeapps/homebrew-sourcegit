cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.12"
  sha256 arm:   "2152389572ffb45622bf5ccfa2ba3e9443117a868d29c9c836899769cf03f1ad",
         intel: "2d4ad22db13218e9a337134e5bd1b948b97875132e86e3bc3c104dbe14f4cd81"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
