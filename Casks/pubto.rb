cask "pubto" do
  version "0.4.61"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.61/pubto-desktop-macos-x64.tar.gz"
    sha256 "ca1cfa08fc6670fd5979239977144d67670dc427309ea68845c2d99c8f468323"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.61/pubto-desktop-macos-arm64.tar.gz"
    sha256 "f353d837af9c614919f1c4eae2e0c7aff9dd63a23756ac2534ad961d8f291f05"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
