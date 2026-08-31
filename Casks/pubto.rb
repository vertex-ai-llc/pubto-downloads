cask "pubto" do
  version "0.4.11"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.11/pubto-desktop-macos-x64.tar.gz"
    sha256 "979d28eb49242dd969b11bb339b394b8a49a849a21bf2fae7d7fb92009f14d28"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.11/pubto-desktop-macos-arm64.tar.gz"
    sha256 "ccf8d529637b633ad9c80c27fe06823fc90295f89e8bc1c648de93bafac74812"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
