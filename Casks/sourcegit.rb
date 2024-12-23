cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.44"
  sha256 arm:   "688b7de1ebfa4784146c8edf6a138e0d68fe72c3b660464854504ef85cef4a54",
         intel: "e9b208c7330d074af88e29e7fc8f410c2b20d55f512d5881d0c4b22938a17483"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
