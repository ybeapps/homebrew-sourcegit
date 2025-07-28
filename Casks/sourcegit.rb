cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.28"
  sha256 arm:   "aaa5dc67475baaa288e53b1c8457d427eba3afff1215388c28b2a7052a89c623",
         intel: "3adcb948ac9f45b1e10ee0ce13e1ddb971153bf495482110bfa68978fc0bd7a1"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
