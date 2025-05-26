cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.19"
  sha256 arm:   "aaf756c184f364a23f63ca404b5de18ce3d7de59aa66bfc28700abbcf53b86ab",
         intel: "a24e2016d56225d58447d0cfeaff8d433ebf6102371536bee7776a8b4c6ced3d"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
