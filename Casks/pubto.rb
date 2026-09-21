cask "pubto" do
  version "0.4.27"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.27/pubto-desktop-macos-x64.tar.gz"
    sha256 "2621690118926c64724266e24ce0b231743cdf24fd6be00712bf6508f50d2569"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.27/pubto-desktop-macos-arm64.tar.gz"
    sha256 "2e0ae3a4b3bdfc6a5bbeb0f9074c7f6cf5bcc7cd1a741ffefbc3ed16f423acff"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
