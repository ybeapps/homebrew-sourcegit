cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.13"
  sha256 arm:   "b5adadacfc9017d83fd4d0b2304c6c91fec36187abd2be658e82c460d6906651",
         intel: "a439e75f97c10f672e1821caf1f0d52c8e82b06b50dd0031239c3765181f89a4"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
