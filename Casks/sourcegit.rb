cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.37"
  sha256 arm:   "c02e92f1118912eed10ff9e4889ef14a22d129da23f4cef36a6704224a7d731a",
         intel: "37f6988cedef7915f971ef122a3534fda7dabb8961d76e08ce88004d1a7c9553"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
