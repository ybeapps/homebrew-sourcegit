cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.39"
  sha256 arm:   "51d273864d51f745804f34b600425b3d6c18da70c59f8f35e39151ca0330a812",
         intel: "4238fb3e35b2c484f6115444608413712e61c91106275918e7ebf5aa6824adfa"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
