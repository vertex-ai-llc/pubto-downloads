cask "pubto" do
  version "0.4.64"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.64/pubto-desktop-macos-x64.tar.gz"
    sha256 "b53b421dbd9aa277b495054d8a0ee92801255b1b1aa0d747f3946f4afcd059f2"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.64/pubto-desktop-macos-arm64.tar.gz"
    sha256 "7d2885861efd0c80e81777abcc9422de88edc9c5babe8d499d90cbfebbce9000"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
