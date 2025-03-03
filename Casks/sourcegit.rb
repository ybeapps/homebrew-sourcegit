cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.07"
  sha256 arm:   "185780ea1c719dc3beb483c27e09021d96ff272bb21a2fd8fcb4788a5b01993f",
         intel: "3e2e5094d444f152c66e06f7b3ee6bc915fded6eb929357aee84a4f9f803c2a2"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
