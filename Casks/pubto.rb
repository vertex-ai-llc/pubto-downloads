cask "pubto" do
  version "0.4.69"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.69/pubto-desktop-macos-x64.tar.gz"
    sha256 "48b2b1282f31cc81becfa87729a8358bb776ca2b511ab2eda8d215eb9a6b7f58"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.69/pubto-desktop-macos-arm64.tar.gz"
    sha256 "47478f37e3dea70bde5c8180ec1e0690e3c8a6dc5413b7e4090b50d0b29e6678"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
