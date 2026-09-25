cask "macmirror@beta" do
  version "1.1.0-beta.3"
  sha256 "f33aae4419870d8d478828e3e1997e62508b10beef5a07f3783a72bd016fb238"

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
