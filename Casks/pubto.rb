cask "pubto" do
  version "0.4.24"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.24/pubto-desktop-macos-x64.tar.gz"
    sha256 "c02740848500672d7fe75f4f588cc46ceadfa940e9085a8a08b46ff57c42bbf6"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.24/pubto-desktop-macos-arm64.tar.gz"
    sha256 "1bcfe020256e48a0e7435350ced5c49f6d9e4b89e89a665411a9003fd7025ed8"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
