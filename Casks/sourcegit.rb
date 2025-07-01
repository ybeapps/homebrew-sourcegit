cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.24"
  sha256 arm:   "7e54166542f30991fdf1b3d7906261088a044912e296bd4f005913a57f126de4",
         intel: "d1792db698700d1839678a8792a944e004ffc9a7d8ace141109419606221bd7b"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
