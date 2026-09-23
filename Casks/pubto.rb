cask "pubto" do
  version "0.4.30"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.30/pubto-desktop-macos-x64.tar.gz"
    sha256 "605c767390596b05273a0ce777c48afe7c717cdecf75f1330c21b582c90b2751"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.30/pubto-desktop-macos-arm64.tar.gz"
    sha256 "c7dfb089d23f5f16b968168ee81550525bda3998b32a7623d499aa440d8cff31"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
