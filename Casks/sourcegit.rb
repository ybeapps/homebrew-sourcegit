cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.41"
  sha256 arm:   "18442424201b9e8853819a1525dee6acefef4a656fd4271d9c331cd1faeb4329",
         intel: "9d4b69fabd9e70b086255d11ae51bd3515996ebbe86294fdbaed1bc3feb4878a"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
