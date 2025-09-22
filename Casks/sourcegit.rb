cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.35"
  sha256 arm:   "bbf97b5e4890b0a203c3ae9446198b2dfe642a9722d36153dd7bd3391e6fb0e3",
         intel: "e90902fd64dd8a9107f7799369419ab60354f25cf1c21f02b9394b96572f8845"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
