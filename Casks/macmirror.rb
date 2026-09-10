cask "macmirror" do
  version "1.0.0"
  sha256 "185e805d08bda546859ad1c90a563c5af6ca05f0a98e4eae3372197666d90fb1"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/v#{version}/MacMirror-v#{version}.dmg"
  name "MacMirror"
  desc "Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

  conflicts_with cask: "macmirror-beta"
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
