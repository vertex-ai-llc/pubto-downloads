cask "pubto" do
  version "0.4.58"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.58/pubto-desktop-macos-x64.tar.gz"
    sha256 "b0210ed82dd6a54aa360382651955e4df0f37a75fd0b24b0adbcfdb58669cd96"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.58/pubto-desktop-macos-arm64.tar.gz"
    sha256 "651b90646fab4d26d56e85cf7e34b8e6cadb5fa6543837f3ced651660dfb4678"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
