cask "pubto" do
  version "0.4.8"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.8/pubto-desktop-macos-x64.tar.gz"
    sha256 "cf03e22d8f140659bfe5374299cf2d808a17d796b9b8d6df0e1487a025366b59"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.8/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a58ae7305554da0a37fd23961d9154bbb1dafdb11fbec4c7d9786b596c12ac66"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
