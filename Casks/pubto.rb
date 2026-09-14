cask "pubto" do
  version "0.4.23"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.23/pubto-desktop-macos-x64.tar.gz"
    sha256 "d25b5f6def840aa4f733b9474c92809a716525328b70b4175fb366271f74d608"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.23/pubto-desktop-macos-arm64.tar.gz"
    sha256 "fc50a6b849729646d6396a5e58652502342aa0aca261b30ee9218b2f4f63c713"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
