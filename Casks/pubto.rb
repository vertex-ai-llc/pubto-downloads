cask "pubto" do
  version "0.4.41"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.41/pubto-desktop-macos-x64.tar.gz"
    sha256 "d12365f43924861ccd2a6b1b986197aed4e58252a9ff82a8d6a222db00c20df2"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.41/pubto-desktop-macos-arm64.tar.gz"
    sha256 "982ad7563ffa5306bab39aedbe9640ea971a4352557fe9811f62eb74b41bf278"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
