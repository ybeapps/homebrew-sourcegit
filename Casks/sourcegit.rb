cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.16"
  sha256 arm:   "d68b25dfc983d3375e8ca08159442da4dd2ad5249c357fcb753fb014b0d61ba6",
         intel: "cc2af08130b59a58ca04ad036090e49807b76c6c233abec4788f37e13e60e87b"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
