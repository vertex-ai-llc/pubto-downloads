cask "pubto" do
  version "0.4.38"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.38/pubto-desktop-macos-x64.tar.gz"
    sha256 "7659faed96449c65f71dfae7faca0b327f38690846c89e8f066d257544d7b2f2"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.38/pubto-desktop-macos-arm64.tar.gz"
    sha256 "adcc18b81489551bee1ee9748636064aa3f8048ca05007e69993857f3431e0a9"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
