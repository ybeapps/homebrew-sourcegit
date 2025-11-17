cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.38"
  sha256 arm:   "722be5ca9074019ef84b827d250473efe68bff58f64c132da5f418abe74829bf",
         intel: "a2ceaed53cdfc829bf1b22de61a89eb7b527d432db05d22e4ba5fa7dc186b35e"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
