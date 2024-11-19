cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.39"
  sha256 arm:   "7d2c3f0416b7f9331505cbd2edfc4dd58ebf12248fd3bd494b03d3a2d87994f7",
         intel: "10a9f35237e2533783ad51f2111968a5a4f0525dd962c995daef9aebc8f8d5db"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
