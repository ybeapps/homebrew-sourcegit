cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.40"
  sha256 arm:   "1d717e95102941c7238ccb5a0688c374fcf7aca6b0ac54e73536bba7f6b6e294",
         intel: "934d60aa177c4f7d91c7803d99de28de51c68276878dde9b5ac3ebeb6a6c4e5e"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
