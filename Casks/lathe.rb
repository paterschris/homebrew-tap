cask "lathe" do
  version "1.4.0"
  sha256 "0ec62ddd82e93af2879205ab507282b04c6978b2939ccec45c376e738a43b894"

  url "https://github.com/paterschris/lathe/releases/download/v#{version}/Lathe-#{version}-aarch64-macos.zip"
  name "Lathe"
  desc "Customized code editor forked from Zed with enhanced terminal integration and theme customization"
  homepage "https://github.com/paterschris/lathe"

  depends_on arch: :arm64

  app "Lathe.app"

  zap trash: [
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Lathe",
    "~/Library/Preferences/dev.zed.Lathe.plist",
  ]
end
