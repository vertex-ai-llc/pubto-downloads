cask "pubto" do
  version "0.4.17"

  on_intel do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.17/pubto-desktop-macos-x64.tar.gz"
    sha256 "77bfec036c0ff9692e7e3358868296bb23694c37ca1ff005cabe109c781741bf"
  end

  on_arm do
    url "https://github.com/vertex-ai-llc/pubto-downloads/releases/download/v0.4.17/pubto-desktop-macos-arm64.tar.gz"
    sha256 "a54f4255c1a23bc6ce3e9f598a393149eff6707d52a161fc84588db1c2748ff9"
  end

  name "Pubto"
  desc "Pubto Desktop and local publishing CLI"
  homepage "https://github.com/vertex-ai-llc/pubto-downloads"

  app "Pubto.app"
  binary "#{appdir}/Pubto.app/Contents/MacOS/pubto-cli", target: "pubto"
end
