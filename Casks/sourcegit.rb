cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.08"
  sha256 arm:   "73aab53c368b6ce0a22247a1891685f057c773ced778ca944a434395312123b2",
         intel: "3411959cf2e1ff558f6d7fda7e4b7730ec5b42a656759d5dcd7ad15f25abe5b3"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
