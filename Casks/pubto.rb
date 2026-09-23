cask "pubto" do
  version "0.4.29"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.29/pubto-desktop-macos-x64.tar.gz"
    sha256 "4c6e21f3814e96e0bb97f59c709adf06ab0f80b209c66fdbc3cbeee25373eeed"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.29/pubto-desktop-macos-arm64.tar.gz"
    sha256 "90f8d1e545fd30876f96fdd02621ae03cb5b9f9e0f1ed52131cc5389c62f0762"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
