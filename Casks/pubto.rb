cask "pubto" do
  version "0.4.68"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.68/pubto-desktop-macos-x64.tar.gz"
    sha256 "e0c0f9d89ca2709a5e2a761d976645aa23a984b48d0b1a2957e755c8939db6d9"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.68/pubto-desktop-macos-arm64.tar.gz"
    sha256 "69298e194888786169c7cb53f1b35ec6608bc067db86edb643f5c27276d2a829"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
