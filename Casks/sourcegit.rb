cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.26"
  sha256 arm:   "d78ae645f89b09a9fca80b6133a9cd4a16db1f0fa3bd15b2037dadadd72ca10e",
         intel: "7f63fdf6b6095d7fb260fb8b9df0a7b410d19894b32e6ae2ca6d3d1349546f9c"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
