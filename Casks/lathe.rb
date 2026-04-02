cask "lathe" do
  version "0.233.0"
  sha256 "0119f8dbe038838ea7c71d95d86ba9452cf228f3a47f90fbd8ccaac87ec8a759"

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
