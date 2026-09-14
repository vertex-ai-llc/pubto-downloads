cask "pubto" do
  version "0.4.21"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.21/pubto-desktop-macos-x64.tar.gz"
    sha256 "5086128d13b631d053f66e042cee8b953e4f12ab3694203765ef70cac1c2ae2b"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.21/pubto-desktop-macos-arm64.tar.gz"
    sha256 "5b1975f80f278024cf71b660e3ea874d790cf0fe5590b3c01cb36306fe138fa6"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
