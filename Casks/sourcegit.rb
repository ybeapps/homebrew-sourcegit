cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.40"
  sha256 arm:   "cb04199770c0c55f660e084b12aec07bc175f901ba2e73ffec628c74c336f08f",
         intel: "15d40c22c023d1c5e63448cafa208596a8442b636f18e7eb600d5e3abdaf635a"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
