cask "pubto" do
  version "0.4.59"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.59/pubto-desktop-macos-x64.tar.gz"
    sha256 "7ed47e0584e3a36e3bb4c2a1505c8fa8554fb2487bdf11d90000d28584002964"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.59/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a704a76f5ed874431ac01f7e579780ba22cb787fc4219e5e1580a51fa021455c"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
