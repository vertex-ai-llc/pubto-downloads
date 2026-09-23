cask "pubto" do
  version "0.4.34"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.34/pubto-desktop-macos-x64.tar.gz"
    sha256 "c899e6d2e5d3dcb6580b1e8467f74819fc4287c8587b75bd1ac3ff7f9b27ed39"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.34/pubto-desktop-macos-arm64.tar.gz"
    sha256 "d5f4ecb1072b32ec89095d8e3aaf9ac577dfc1649872c9bbf1c530bef4b8d974"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
