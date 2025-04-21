cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.14"
  sha256 arm:   "a5c2c0b41d5307dc06342ba93b66e736731b47295f6701608b6c410e8c7f7b8f",
         intel: "1b06cfecf6a26400c6e9c24351b06e9066648e7e728ce5964591418ca45894d4"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
