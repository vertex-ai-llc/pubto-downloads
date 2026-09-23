cask "pubto" do
  version "0.4.33"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.33/pubto-desktop-macos-x64.tar.gz"
    sha256 "7737280e770e1357afcd78b2ac51b3756eb79e17e4067b8c219d4d9ca6a8378b"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.33/pubto-desktop-macos-arm64.tar.gz"
    sha256 "62bcb2b19c4441c74b7f9207870a5c07b2d7a5c8e02d5c1e1d933c09a790144e"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
