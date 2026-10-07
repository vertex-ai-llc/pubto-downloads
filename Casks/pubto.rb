cask "pubto" do
  version "0.4.77"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.77/pubto-desktop-macos-x64.tar.gz"
    sha256 "6746b9da67057b5407e4d17a612928a8ed36067279e9214f6a7f1a6a5e7db2d4"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.77/pubto-desktop-macos-arm64.tar.gz"
    sha256 "b51e668af35248491a208844f51bf405c85b0afa41536c9b9bbd3ce2cd2df74d"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
