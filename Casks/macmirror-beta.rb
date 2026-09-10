cask "macmirror-beta" do
  version "1.0.0-beta.4"
  sha256 "618aab13a642caf841881d56b159790b234a34266bb36d97b52083a4f08d1427"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/v#{version}/MacMirror-v#{version}.dmg"
  name "MacMirror Beta"
  desc "Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi (Beta channel)"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

  conflicts_with cask: "macmirror"
  depends_on macos: :sonoma

  app "MacMirror.app"

  zap trash: [
    "~/Library/Application Support/MacMirror",
    "~/Library/Preferences/com.angelsoft.MacMirrorApp.plist",
  ]

  caveats <<~EOS
    MacMirror is open source and not notarized with a paid Apple Developer certificate.
    To allow macOS to open it, run:
      xattr -cr /Applications/MacMirror.app

    Alternatively, go to System Settings -> Privacy & Security, scroll down,
    and click "Open Anyway" next to the MacMirror prompt.
  EOS
end
