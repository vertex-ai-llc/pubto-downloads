cask "pubto" do
  version "0.4.10"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.10/pubto-desktop-macos-x64.tar.gz"
    sha256 "aaf400a6a5403813e01033e8db04875e93bb3899d6c625727d7ec4f0b981bc26"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.10/pubto-desktop-macos-arm64.tar.gz"
    sha256 "abe023e5221b60f5be4d588ba6f17508eb72c7d7e846b5e4fea5b3455952b446"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
