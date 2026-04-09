cask "lathe" do
  version "0.233.1"
  sha256 "ed62bb58917cf302a0c3e63fb251a32d77f86624c4ccf7188112b58df235c78a"

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
