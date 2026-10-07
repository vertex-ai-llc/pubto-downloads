cask "pubto" do
  version "0.4.71"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.71/pubto-desktop-macos-x64.tar.gz"
    sha256 "39dffa2a762d685c13c0c2b89ffbc1009c5362644f68454b409831ef93fcfced"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.71/pubto-desktop-macos-arm64.tar.gz"
    sha256 "2da7f931f46217960b823bd5ba135d0d02909bfb4b1501ea64096864f1114c67"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
