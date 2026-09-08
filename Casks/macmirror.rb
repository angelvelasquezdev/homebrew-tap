cask "macmirror" do
  version "1.0.0-beta.2"
  sha256 "9b8ca61fa78b96311675f8e08ac4252792c9595152f8ef02968658d1287f661a"

  url "https://github.com/angelvelasquezdev/mac-mirror-macos/releases/download/v#{version}/MacMirror-v#{version}.dmg"
  name "MacMirror"
  desc "Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi"
  homepage "https://github.com/angelvelasquezdev/mac-mirror-macos"

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
