cask "pubto" do
  version "0.4.57"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.57/pubto-desktop-macos-x64.tar.gz"
    sha256 "65b77112af123eee3f5a30aa461800ce8ba0de86ef67852bbc2187ed1653a7c0"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.57/pubto-desktop-macos-arm64.tar.gz"
    sha256 "cce62c9be0f7948044db7ee37b2c41744af0997e918705ba29d58bd27ced0f93"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
