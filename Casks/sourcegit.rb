cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.32"
  sha256 arm:   "35663f59f79c512c5ca341cc06c94c090e6b3f977d84b772ac25cb8d29f3a3c1",
         intel: "11cd5b4dad4669f97050fdf276343b46fd3f8400df05273d03c25261f6137f5f"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
