# typed: false
# frozen_string_literal: true

# Cross-platform Homebrew formula for SourceGit
#
# Note: This formula uses pre-built binaries because SourceGit requires .NET 10,
# which is not yet available in Homebrew. Once Homebrew adds .NET 10 support,
# this formula could be refactored to build from source and potentially
# submitted to homebrew-core.
#
# For now, this formula is intended to be used via a third-party tap:
#   brew tap ybeapps/homebrew-sourcegit
#   brew install sourcegit

class Sourcegit < Formula
  desc "Open-source Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"
  version "2025.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-arm64.zip"
      sha256 "f77bb5ae69a4e1a25b4cf6a1935c9456cda9e7a126de959155f0749044286820"
    end
    on_intel do
      url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-x64.zip"
      sha256 "67ac9742719ce64944c9162719907ffdc07ec2f2e9d2fcbac667c44f4bdd4657"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit-#{version}.linux.arm64.AppImage"
      sha256 "d807b1a39de9d8369f658433723ee9d0364fba2b3396a89990f153161bc8ee79"
    end
    on_intel do
      url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit-#{version}.linux.amd64.AppImage"
      sha256 "aceee1566a2a0c75e3a84e48e7172d8f5df4774c4589dad94c78ad64c8c989fb"
    end
  end

  def install
    if OS.mac?
      prefix.install "SourceGit.app"
      bin.write_exec_script prefix/"SourceGit.app/Contents/MacOS/SourceGit"
    else
      appimage = Dir["*.AppImage"].first || "sourcegit-#{version}.linux.#{Hardware::CPU.arm? ? "arm64" : "amd64"}.AppImage"
      appimage_full = buildpath/appimage
      
      # Extract icon from AppImage before moving it
      system "chmod", "+x", appimage_full
      system "cd #{buildpath} && ./sourcegit-#{version}.linux.#{Hardware::CPU.arm? ? "arm64" : "amd64"}.AppImage --appimage-extract"
      
      # Install icon if found (use absolute path to avoid cache issues)
      icon_file = "#{buildpath}/squashfs-root/com.sourcegit_scm.SourceGit.png"
      if File.exist?(icon_file)
        (share/"icons/hicolor/256x256/apps").mkpath
        FileUtils.cp icon_file, "#{share/"icons/hicolor/256x256/apps"}/sourcegit.png"
        icon_path = "#{share/"icons/hicolor/256x256/apps"}/sourcegit.png"
      else
        icon_path = nil
      end
      
      # Install the AppImage itself
      bin.install appimage => "sourcegit"
      
      # Create desktop entry for applications menu
      desktop_file = share/"applications"/"sourcegit.desktop"
      exec_path = "#{prefix}/bin/sourcegit"
      icon_line = icon_path ? "Icon=#{icon_path}\n" : ""
      desktop_file.write "[Desktop Entry]\n" \
        "Type=Application\n" \
        "Name=SourceGit\n" \
        "Comment=Git GUI client\n" \
        "Exec=#{exec_path}\n" \
        "#{icon_line}" \
        "Categories=Development;\n" \
        "Terminal=false\n" \
        "StartupNotify=true\n"
    end
  end

  def caveats
    if OS.linux?
      <<~EOS
        SourceGit is installed as an AppImage.
        You may need FUSE to run it: https://github.com/AppImage/AppImageKit/wiki/FUSE

        On Fedora/Bluefin: sudo dnf install fuse fuse-libs
        Or run with --appimage-extract-and-run flag.
      EOS
    end
  end

  test do
    if OS.mac?
      assert_path_exists prefix/"SourceGit.app/Contents/MacOS/SourceGit"
    else
      assert_predicate bin/"sourcegit", :executable?
    end
  end
end
