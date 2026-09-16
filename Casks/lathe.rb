cask "lathe" do
  version "1.2.0"
  sha256 "0c36ccf0e81c7e8579863458fd80d3bcdbf8a52fd1cedc356e823a3168756f27"

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
