cask "pubto" do
  version "0.4.22"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.22/pubto-desktop-macos-x64.tar.gz"
    sha256 "35db2ac3b59d142e25ced367cf81a37d1af6e9146d53d96f96725d736c128142"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.22/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a67f8631b455d3dee46895bfbbfb4cf53d4a52d4b9d96757cc6df17ff976ff79"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
