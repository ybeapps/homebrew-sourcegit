cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.05"
  sha256 arm:   "cdb5a4afde9e65850f904b9cbfdc93d266e484a32072cd8367060c8b2df94559",
         intel: "7cb5a5e1e2c0d420116d87e1357c63767573143bb706f8ce46ddad6f1fc79e67"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
