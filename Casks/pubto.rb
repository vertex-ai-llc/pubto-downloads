cask "pubto" do
  version "0.4.54"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.54/pubto-desktop-macos-x64.tar.gz"
    sha256 "8fa047b04740478e07447f1218d014e97b4ce1013c94aecb029cc5473f6aba6b"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.54/pubto-desktop-macos-arm64.tar.gz"
    sha256 "642568847b3dd3af7c671e3983b782d148445502b716d0d0233c170c8417d9fd"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
