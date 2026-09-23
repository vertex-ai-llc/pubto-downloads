cask "pubto" do
  version "0.4.36"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.36/pubto-desktop-macos-x64.tar.gz"
    sha256 "cc43cf743fe31944e4837588be5523e2bb2d51c5693d46a127fc9ee33f011c20"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.36/pubto-desktop-macos-arm64.tar.gz"
    sha256 "7decde32df1a775c60c814ca340e50de75ec44c5d3d109fc78c70ed0dae6aacc"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
