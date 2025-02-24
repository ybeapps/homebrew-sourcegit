cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.06"
  sha256 arm:   "650dd01b19ba86dd935fef2eb02f08a36cb25690a9fdbd059fa488a3e096be39",
         intel: "6cd2ac3ca7c4f60ec204d2aba410ac865483ed3fd3c9b906a7bb303f78eb6ea0"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
