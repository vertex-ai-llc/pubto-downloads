cask "pubto" do
  version "0.4.78"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.78/pubto-desktop-macos-x64.tar.gz"
    sha256 "6650ebb8a8eec2e162eead573ef0719c68430d85c837e5d77054fcb801063e2d"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.78/pubto-desktop-macos-arm64.tar.gz"
    sha256 "972faaf71e01f5ee2ee117dac3b5b8fb4b0e73a8f4eb793995d0e6da44e1c812"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
