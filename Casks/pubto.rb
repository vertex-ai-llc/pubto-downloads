cask "pubto" do
  version "0.4.35"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.35/pubto-desktop-macos-x64.tar.gz"
    sha256 "2348ea5d7d5e14a4846d6fd9f982395afcacf9829bec68ee51d9e2a9c5a6355d"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.35/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a9e2aa7319faccd0dff12226f1cc6cee8b53b66ca8825f29c9ebe97f6d82dbec"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
