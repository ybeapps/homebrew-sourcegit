cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.36"
  sha256 arm:   "a9b7ef4ba1c214fa4e78cd4116db59efccb6e0c7d542f358e3536303ec605f7a",
         intel: "f6d485958902b33898785a2e966bc875710a62be28b85bacdfaa20532e12580d"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
