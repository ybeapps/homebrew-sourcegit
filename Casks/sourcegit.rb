cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.28"
  sha256 arm:   "4c399020ef599a078aa222652310e6563a901b864d4bbbc750f928f1f8c48240",
         intel: "70f55c87478920e787936de0a4f790db4dc2f907abc877f50caa5f1acc23fb70"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
