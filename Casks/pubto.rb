cask "pubto" do
  version "0.4.46"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.46/pubto-desktop-macos-x64.tar.gz"
    sha256 "8f02408f6ad6ac8ddd7c83482598192c9edeaa32e8ff0a5a629f64cb12b71736"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.46/pubto-desktop-macos-arm64.tar.gz"
    sha256 "98a35ba07d66b21bf40c2ebbd69b4a4b82e6e91a5f38a2757e76a12d789758c3"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
