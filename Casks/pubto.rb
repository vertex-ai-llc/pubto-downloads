cask "pubto" do
  version "0.4.72"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.72/pubto-desktop-macos-x64.tar.gz"
    sha256 "6b3ae23a4fb95b923139a03bc934a0d646ebdc065502c5ebb59dc529935dd37b"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.72/pubto-desktop-macos-arm64.tar.gz"
    sha256 "ff41cddf29a3e0dfeed4d09636c4d07ef2e1d5d1e66f9e3a212b52ac25b9a7fc"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
