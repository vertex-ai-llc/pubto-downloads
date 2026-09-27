cask "pubto" do
  version "0.4.40"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.40/pubto-desktop-macos-x64.tar.gz"
    sha256 "c8ff95912c9d083eb0389eda5d87780661c0beb85ee1730821745e6be2de6e19"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.40/pubto-desktop-macos-arm64.tar.gz"
    sha256 "60bc52a04456219d130609258b58fcf1f01f6a920b8df2e742f6c0c45a979ce5"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
