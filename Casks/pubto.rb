cask "pubto" do
  version "0.4.26"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.26/pubto-desktop-macos-x64.tar.gz"
    sha256 "251fc7ec41d0aba4ba8f689dc061cb7f0f79695299c571eff566fc6b03d74914"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.26/pubto-desktop-macos-arm64.tar.gz"
    sha256 "ead3d704ece2e7dc4b64197d50602eb1e757c2d1d7161bff0c0340d2bdd365d1"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
