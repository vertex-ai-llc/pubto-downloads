cask "pubto" do
  version "0.4.75"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.75/pubto-desktop-macos-x64.tar.gz"
    sha256 "b74f2f40c5fa912af9a86f9fae3fefb29ac9b3c16d08bfcc490057b2abbe3c0d"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.75/pubto-desktop-macos-arm64.tar.gz"
    sha256 "11dac580eaf75adb727e9d6ec1760000a969a5191ac09e862fe7da1025f47bbb"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
