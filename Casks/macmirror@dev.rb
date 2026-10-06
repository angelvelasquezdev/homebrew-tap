cask "macmirror@dev" do
  version "dev.202610061909.a304263"
  sha256 "fe9884d0ed19c815b6196ece978aa0486cbd575ce94562117aba3d381917420e"

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
