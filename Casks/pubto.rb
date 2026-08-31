cask "pubto" do
  version "0.4.14"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.14/pubto-desktop-macos-x64.tar.gz"
    sha256 "3f41f14e0d29b8a4bc05e50d5280840121d0dd40b09c0022fe45399307d24a90"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.14/pubto-desktop-macos-arm64.tar.gz"
    sha256 "eb6615745569409a3e77fe9e2f4e579d8c6fb60de6f29b7f1312285a0a476652"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
