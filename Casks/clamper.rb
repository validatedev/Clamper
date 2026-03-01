cask "clamper" do
  version "1.0.0"
  sha256 "77195e3da6c15b68ba1621255d0132172b38ff456efafd0db83a1aad0535fe5f"

  url "https://github.com/validatedev/Clamper/releases/download/v#{version}/Clamper-#{version}.dmg"
  name "Clamper"
  desc "Customize macOS menu bar icon spacing"
  homepage "https://github.com/validatedev/Clamper"

  livecheck do
    url "https://raw.githubusercontent.com/validatedev/Clamper/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Clamper.app"

  zap trash: [
    "~/Library/Application Support/dev.mertcandemir.Clamper",
    "~/Library/Caches/dev.mertcandemir.Clamper",
    "~/Library/HTTPStorages/dev.mertcandemir.Clamper",
    "~/Library/Preferences/dev.mertcandemir.Clamper.plist",
    "~/Library/Saved Application State/dev.mertcandemir.Clamper.savedState",
  ]
end
