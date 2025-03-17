cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.09"
  sha256 arm:   "d3db0fcd70514dbacceb616aa86d95667bbbd6d91eab0eea2ba58a4b5df66264",
         intel: "aedd1b424dfb2c24e85f5132fb656ff9ec53b853e9ffb7971e8680bdb031fca9"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
