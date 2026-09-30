cask "pubto" do
  version "0.4.50"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.50/pubto-desktop-macos-x64.tar.gz"
    sha256 "25870cf36c6db370ffe39eb5d46c66eb05c11150b28f8d2976564d622fa10f2a"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.50/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a6cafa12e7300d877c398aa913b1477a6cffcfeea5b9774c6f786950f0c26e72"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
