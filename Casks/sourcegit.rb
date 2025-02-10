cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.04"
  sha256 arm:   "a37c5f73577962c551c1a0ff95ba257e4cf8db52affd58ed940ff7be3d242633",
         intel: "57bad5b2c7a88fc9e960654264a4cd9b8eaa4050fda9b57146528bdae6f27e37"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
