cask "pubto" do
  version "0.4.53"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.53/pubto-desktop-macos-x64.tar.gz"
    sha256 "1933d2d64e5063fb11897c6673d66a996e6b880023b21274de08f7d75e3b44c1"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.53/pubto-desktop-macos-arm64.tar.gz"
    sha256 "f4db56dac5757cb840a57ac785a9b34f491b8ef05c9d592283494c3b97813d99"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
