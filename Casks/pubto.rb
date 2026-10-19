cask "pubto" do
  version "0.4.80"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.80/pubto-desktop-macos-x64.tar.gz"
    sha256 "1a69be66207f4ed75d75d69485b360fb8d49a54bc1b5946e953466eee676329c"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.80/pubto-desktop-macos-arm64.tar.gz"
    sha256 "ba025ee46d6ea963fbf307139cdaa94c46091f0376848a97812fc523d98726d6"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
