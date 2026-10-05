cask "pubto" do
  version "0.4.66"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.66/pubto-desktop-macos-x64.tar.gz"
    sha256 "079211d9000f5056daae30534a83679c187d97efb008da69de7eff6951f07699"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.66/pubto-desktop-macos-arm64.tar.gz"
    sha256 "ac8ef06ae29d065beaf9d10525715ce525dc6e1e754939ea92f74df2587950eb"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
