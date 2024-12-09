cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.42"
  sha256 arm:   "5c19078c178f3b0a752776abd3c206fdf06e20ef79ca1edbbded33e92feb7b20",
         intel: "f9a7b14ca021a1dde08345d49195e76f54ddcc89c76c96e086b073ca73470128"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
