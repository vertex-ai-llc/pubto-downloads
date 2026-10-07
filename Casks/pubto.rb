cask "pubto" do
  version "0.4.73"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.73/pubto-desktop-macos-x64.tar.gz"
    sha256 "f0235dcdd450578858d947d0b009aa35f9549518a21be5d2460eac2834e31ccc"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.73/pubto-desktop-macos-arm64.tar.gz"
    sha256 "9043c9d8f40edd26d85f37b7c5022ef3a2680320bcc5471c753304aa58a2324a"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
