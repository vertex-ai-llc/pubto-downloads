cask "pubto" do
  version "0.4.43"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.43/pubto-desktop-macos-x64.tar.gz"
    sha256 "cbcf467c6a21f22173f5420362a3e7529f5683e79fe0db6a9fa0cabeceb89b0f"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.43/pubto-desktop-macos-arm64.tar.gz"
    sha256 "dd8cc4b1fa830bd1040269b6f206981dfcafe8a7c3278b65cbc98cba8e1e77d3"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
