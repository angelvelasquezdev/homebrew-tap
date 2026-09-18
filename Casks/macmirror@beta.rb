cask "macmirror@beta" do
  version "1.0.1-beta.1"
  sha256 "5f576710cb9584ff3d65d78be3aca95dc0e611853d21ed0117a111e519249de0"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/v#{version}/MacMirror-v#{version}.dmg"
  name "MacMirror (Beta)"
  desc "Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi (Beta channel)"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

  conflicts_with cask: [
    "macmirror",
    "macmirror@dev",
  ]
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
