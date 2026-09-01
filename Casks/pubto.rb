cask "pubto" do
  version "0.4.15"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.15/pubto-desktop-macos-x64.tar.gz"
    sha256 "06758791744e15caac3c5b061de8603331fd64053406584744814155b8de4853"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.15/pubto-desktop-macos-arm64.tar.gz"
    sha256 "6bcaa1066f8e9176643163b7139458bcb2641e6c58514339971fee47fc154bfd"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
