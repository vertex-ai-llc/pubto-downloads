cask "pubto" do
  version "0.4.49"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.49/pubto-desktop-macos-x64.tar.gz"
    sha256 "3359775674f6c44c91bcc6733af6b06927ebf76e917b410da1ad0a03d3ccdf71"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.49/pubto-desktop-macos-arm64.tar.gz"
    sha256 "407aac793e375b01126b6ade159252b6f4e0f583068032809ef2fdcf28e14953"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
