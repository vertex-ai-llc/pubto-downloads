cask "pubto" do
  version "0.4.65"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.65/pubto-desktop-macos-x64.tar.gz"
    sha256 "c0265255c21feedc6f1ede2ea60b44b540daa3ab860baf7f65e91dc2d0648281"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.65/pubto-desktop-macos-arm64.tar.gz"
    sha256 "b85206145fb9b14becb56fd24cc9d81e408b29f88d8d85e91142f25b2baf6659"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
