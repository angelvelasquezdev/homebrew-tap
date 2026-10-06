cask "macmirror" do
  version "1.2.1"
  sha256 "597c2044b7e7ba8b3fac16e143e7beadd2fd528a6524dfa8dffc97d18dcc4d89"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/v#{version}/MacMirror-v#{version}.dmg"
  name "MacMirror"
  desc "Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

  conflicts_with cask: [
    "macmirror@beta",
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
