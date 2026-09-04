cask "macmirror" do
  version "1.0.0-beta.1"
  sha256 "0af7b34f58b1f75e4c3fa381ee544208601483fb0a1c8a15ce9202f46aefeb04"

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
    If macOS blocks it from opening, run:
      xattr -cr /Applications/MacMirror.app

    Or right-click MacMirror.app in Finder and select "Open".
  EOS
end
