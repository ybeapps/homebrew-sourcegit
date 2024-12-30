cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.45"
  sha256 arm:   "a24303f140f2a8babb892fbe8d90799502af6284cbb842ff32786fcded329fd7",
         intel: "f59994f73f454d996ac7a7a6ca37820835fc037cce2db2b84d0d4b956a5dd98f"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
