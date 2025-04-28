cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.15"
  sha256 arm:   "5a860bb749274922f5027ec082ebaa88e237645f4550c69a522b324b1d09702d",
         intel: "6ecab70a72bdb2829e12a473a7f635ff7dc2cfa972da834ad3d11f90cc2f3666"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
