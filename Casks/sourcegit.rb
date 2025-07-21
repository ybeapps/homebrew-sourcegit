cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.27"
  sha256 arm:   "b3017934c790b409be51667505546c810fdabb582162dd7b4bf8ef5a3f32e539",
         intel: "f3eda69e92d60299404f5c33b7deba665099aa028802eac020cf26581d3024e2"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
