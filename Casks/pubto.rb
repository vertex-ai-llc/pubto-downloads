cask "pubto" do
  version "0.4.47"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.47/pubto-desktop-macos-x64.tar.gz"
    sha256 "e98cd60fe006781113860d4b476b3bda85f266bbad32d59d9821a81f72e87820"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.47/pubto-desktop-macos-arm64.tar.gz"
    sha256 "0b025d7c3e19ae8ce666b82cc0f512332fcd00991ca39e4b099c94cf7a7c453b"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
