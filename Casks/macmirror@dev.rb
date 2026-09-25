cask "macmirror@dev" do
  version "dev.202609251756.4831f3f"
  sha256 "681cf6d1fadae8c27a6da37ec7d02a8cefdbe0e850825aa7bae958c5f5506bb4"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/dev/MacMirror-dev.dmg"
  name "MacMirror (Dev)"
  desc "Native macOS Menu Bar app for mirroring Android notifications (Development Channel)"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

  depends_on macos: :sonoma

  app "MacMirror.app"

  conflicts_with cask: [
    "macmirror",
    "macmirror@beta",
  ]

  zap trash: [
    "~/Library/Application Support/MacMirror",
    "~/Library/Preferences/com.angelsoft.MacMirrorApp.plist",
  ]

  caveats <<~EOS
    You are using the Development (bleeding-edge) channel of MacMirror.
    MacMirror is open source and not notarized with a paid Apple Developer certificate.
    To allow macOS to open it, run:
      xattr -cr /Applications/MacMirror.app

    Alternatively, go to System Settings -> Privacy & Security, scroll down,
    and click "Open Anyway" next to the MacMirror prompt.
  EOS
end
