cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.38"
  sha256 arm:   "50285665cd55ec321335fae9a098f0b3709dbe77615f406a77223049b1dc5f22",
         intel: "9191285cf5d12c86241ca11f64238a30c9950a2b16baee4c4c6514abdf4363a2"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
