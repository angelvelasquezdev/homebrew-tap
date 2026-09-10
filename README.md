# angelvelasquezdev/homebrew-tap

Official Homebrew Tap for **MacMirror** and utilities by [Ángel Velásquez](https://github.com/angelvelasquezdev).

## 🚀 How do I install these formulae / casks?

### Stable Release (Recommended)
```bash
brew install --cask angelvelasquezdev/tap/macmirror
```

### Beta Channel (Pre-releases)
```bash
brew install --cask angelvelasquezdev/tap/macmirror-beta
```

### Or Tap first, then install
```bash
brew tap angelvelasquezdev/tap

# Stable:
brew install --cask macmirror

# Or Beta:
brew install --cask macmirror-beta
```

## 📦 Available Casks

| Cask | Description | Channel | Upstream |
| :--- | :--- | :--- | :--- |
| [`macmirror`](Casks/macmirror.rb) | Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi | Stable | [angelvelasquezdev/mac-mirror-macos](https://github.com/angelvelasquezdev/mac-mirror-macos) |
| [`macmirror-beta`](Casks/macmirror-beta.rb) | Native macOS Menu Bar app for mirroring Android notifications over local Wi-Fi | Beta | [angelvelasquezdev/mac-mirror-macos](https://github.com/angelvelasquezdev/mac-mirror-macos) |

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
brew upgrade --cask macmirror       # For stable channel
brew upgrade --cask macmirror-beta  # For beta channel
```
