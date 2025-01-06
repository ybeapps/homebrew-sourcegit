cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.01"
  sha256 arm:   "8e60802f0287b41374be247d0392bfeae6f1f211d1ab5ad97bda109ac6b4e1d8",
         intel: "ff609146ce667f83c096698904dfbceda8b0f32f2822a685e8923c5b526792ba"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
