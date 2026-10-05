cask "pubto" do
  version "0.4.67"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.67/pubto-desktop-macos-x64.tar.gz"
    sha256 "bf4c503bde5f48df9c7b281f21826de0831fa6645a684146e820b500a63f2823"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.67/pubto-desktop-macos-arm64.tar.gz"
    sha256 "43e1c32f60ba6f83ef984552a57b6ab6922492dc47cbcfb0fc737f26f2818f83"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
