cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.36"
  sha256 arm:   "ffadc25228a65b245990e3dc9420e98da08d4c51e422684cf27d1c22faf4b265",
         intel: "51d9c5fda1e49961a6466d4b00433373986ad96bb41c3f2f2490cd426d49d9fc"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
