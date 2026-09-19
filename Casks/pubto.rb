cask "pubto" do
  version "0.4.25"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.25/pubto-desktop-macos-x64.tar.gz"
    sha256 "264da26ab62369e819d9af561eadce5538f1a25924370d81019d19e95d75afad"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.25/pubto-desktop-macos-arm64.tar.gz"
    sha256 "1a906483e9d19bb7e724a4e8397fc418f1b01213a7ada78a01edf957cfedf877"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
