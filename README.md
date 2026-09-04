# angelvelasquezdev/homebrew-tap

Official Homebrew Tap for **MacMirror** and utilities by [Ángel Velásquez](https://github.com/angelvelasquezdev).

## 🚀 How do I install these formulae / casks?

### Quick Install (One Command)
```bash
brew install --cask angelvelasquezdev/tap/macmirror
```

### Or Tap first, then install
```bash
brew tap angelvelasquezdev/tap
brew install --cask macmirror
```

## 📦 Available Casks

| Cask | Description | Upstream |
| :--- | :--- | :--- |
| [`macmirror`](Casks/macmirror.rb) | Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi | [angelvelasquezdev/mac-mirror-macos](https://github.com/angelvelasquezdev/mac-mirror-macos) |

## 🛡️ First Launch on macOS (Gatekeeper)

MacMirror is 100% open source and is not notarized with a paid Apple Developer certificate. If macOS blocks it on first launch:

```bash
xattr -cr /Applications/MacMirror.app
```

Alternatively, open **System Settings** → **Privacy & Security**, scroll to the **Security** section, and click **Open Anyway** next to the MacMirror alert.

## 🔄 Updates

Homebrew will automatically keep MacMirror up to date when you run:

```bash
brew update
brew upgrade --cask macmirror
```

