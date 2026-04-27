cask "lathe" do
  version "0.235.2"
  sha256 "685dd397f8a495952a0ea0c294e6489de4e9956948dc045831391a877a58a047"

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
