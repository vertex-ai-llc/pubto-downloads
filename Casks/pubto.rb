cask "pubto" do
  version "0.4.39"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.39/pubto-desktop-macos-x64.tar.gz"
    sha256 "475451411106d31d259ea7d8623b9baae0f0f77666b60fb863f830c5f9190bfe"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.39/pubto-desktop-macos-arm64.tar.gz"
    sha256 "8af4e8ed977702fc1b7db0cd61c282385312140af7703ea35c7a47a5393f051c"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
