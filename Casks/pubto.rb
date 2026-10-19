cask "pubto" do
  version "0.4.82"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.82/pubto-desktop-macos-x64.tar.gz"
    sha256 "5c979074d4c0f9f9410b532d65d276fb7225f67d801730c61a9249d09f985311"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.82/pubto-desktop-macos-arm64.tar.gz"
    sha256 "3f4298fd48efa055e002cc5dace6128a258d1257d4d8049dafb7974ca249ed60"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
