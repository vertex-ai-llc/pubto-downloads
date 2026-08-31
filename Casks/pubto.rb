cask "pubto" do
  version "0.4.9"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.9/pubto-desktop-macos-x64.tar.gz"
    sha256 "3ad36c56b72b590c2f2f552597ae062510d3a2ebef6500bdd0dfdcc793fcd702"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.9/pubto-desktop-macos-arm64.tar.gz"
    sha256 "1a4fb5007f57e5decb14250813f391628e1d46a0e2125c1fd1a043c762a6e547"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
