cask "pubto" do
  version "0.4.19"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.19/pubto-desktop-macos-x64.tar.gz"
    sha256 "b38ff0a4cbddf6556502f9d666ed58072b5ec5da558057b59883f0724d3bdc7f"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.19/pubto-desktop-macos-arm64.tar.gz"
    sha256 "397478c7be54b451e5271cf8bb40e5dd6a3013a54c156ebae9aca6cab749c54b"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
