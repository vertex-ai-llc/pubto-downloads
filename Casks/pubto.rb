cask "pubto" do
  version "0.4.37"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.37/pubto-desktop-macos-x64.tar.gz"
    sha256 "62fa15aaef09558b32d8b543cb1c1f456d83d47292d8f0be8fd4e22938007560"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.37/pubto-desktop-macos-arm64.tar.gz"
    sha256 "d39567bb6e7cc376d8045a27591c3990102bea51c3dbcec5da0470997de687b3"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
