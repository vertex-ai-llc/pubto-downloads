cask "pubto" do
  version "0.4.63"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.63/pubto-desktop-macos-x64.tar.gz"
    sha256 "b6c80655465b0e85470e953903b4f399af6d8991d34f58ee7c4a05afdfcbfa26"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.63/pubto-desktop-macos-arm64.tar.gz"
    sha256 "2bb13b790e575b8c321417260f64c2c92c76d22d4df082f637abbcd83ac69241"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
