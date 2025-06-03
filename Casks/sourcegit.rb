cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.20"
  sha256 arm:   "6f5d7ecd56abbd902b0a6b11cfc5d270ed0827d4a397d83ecc591bdd4a3470e4",
         intel: "e1984ab7d20c3f5d6957be3090088e61e598d1dba8e754efc66c3528e5f8ec3a"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
