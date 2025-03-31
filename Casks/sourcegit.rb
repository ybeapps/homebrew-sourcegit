cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.11"
  sha256 arm:   "d2bd0672114d811cb5980ddd6de563950d46cb2ae17982ed81219d799d6dc631",
         intel: "aadc3a2dc6bbe718d0e0b3d8a050a2be2c9d090a8769932c585b60831cbb84e3"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
