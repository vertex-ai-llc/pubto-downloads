cask "pubto" do
  version "0.4.12"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.12/pubto-desktop-macos-x64.tar.gz"
    sha256 "b9d62779076657997f382a83d80b3913fd7fc2e1ae85bc197c75e417659db91a"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.12/pubto-desktop-macos-arm64.tar.gz"
    sha256 "abb6bb0f7b0010ffc2a6d8055513955ce71cc893dab03e183ecf8a1a92a4b288"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
