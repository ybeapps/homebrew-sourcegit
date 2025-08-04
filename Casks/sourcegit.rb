cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.29"
  sha256 arm:   "07afdd9b1ac76b612fee7bb00677684503ce2b308d7b0e831e1a46bf2774c40f",
         intel: "6d4a7978d0398429c480853f12ecd7b12e0b14a92c07d585878f1781ed203d12"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
