cask "pubto" do
  version "0.4.28"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.28/pubto-desktop-macos-x64.tar.gz"
    sha256 "ea07ec3b31306403217bf4bbe21cc211b60649e54df21ff85c50ec8a379000d7"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.28/pubto-desktop-macos-arm64.tar.gz"
    sha256 "c66ce1ebae0fe2a0e57f650661da8e04280583d09d344fdc1c9d5b9b7ac9daae"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
