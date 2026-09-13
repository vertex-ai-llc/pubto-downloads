cask "pubto" do
  version "0.4.18"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.18/pubto-desktop-macos-x64.tar.gz"
    sha256 "e59cf44fdbc38f37a7a5a94df664f24bb4ef0be08e16af4ae0380b7441a3fdc7"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.18/pubto-desktop-macos-arm64.tar.gz"
    sha256 "cdb2f17fbf4081410fa6b6793ca76c563eeb911c6b0cebe59693caf7a58218f8"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
