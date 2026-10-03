cask "pubto" do
  version "0.4.56"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.56/pubto-desktop-macos-x64.tar.gz"
    sha256 "d63a48ccd78ecf87d949b4d404f728cf2f0c6cea196fc336d54f19ba64f72e29"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.56/pubto-desktop-macos-arm64.tar.gz"
    sha256 "72d2eaf80e0e9c487e9a4e112b2b52bb145cf436071e58fcaa30492e82d6ca81"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
