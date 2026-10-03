cask "pubto" do
  version "0.4.55"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.55/pubto-desktop-macos-x64.tar.gz"
    sha256 "f48e9536bb348418c80dac87926e998a23a9525778567f7ab9602f37170175eb"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.55/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a969cf9ce426fab1ee96fc2672af59ad24e8fb1229a3940cfe1868d59096c953"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
