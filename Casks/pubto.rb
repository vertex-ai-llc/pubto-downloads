cask "pubto" do
  version "0.4.20"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.20/pubto-desktop-macos-x64.tar.gz"
    sha256 "63bbbfc826fc5870c0b93738fd071fcf834b3ebcbac7b068f6f6c7ca35c8748b"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.20/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a3e3a90baebcbdcfce32ae518c2dd5269f06e400969513b102e0a95fc94bd64a"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
