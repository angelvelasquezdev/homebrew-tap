# angelvelasquezdev/homebrew-tap

Official Homebrew Tap for **MacMirror** and utilities by [Ángel Velásquez](https://github.com/angelvelasquezdev).

## 🚀 Installation Channels

Choose the channel that best suits your needs:

| Channel | Stability | Description | Install Command |
| :--- | :--- | :--- | :--- |
| **Stable** (Default) | Production | Official general release | `brew install --cask angelvelasquezdev/tap/macmirror` |
| **Beta** | Pre-releases | Release candidates & new features | `brew install --cask angelvelasquezdev/tap/macmirror@beta` |
| **Dev** | Bleeding-edge | Continuous rolling builds from `develop` | `brew install --cask angelvelasquezdev/tap/macmirror@dev` |

> [!TIP]
> To switch between channels, uninstall your current version first:
> ```bash
> brew uninstall --cask macmirror # or macmirror@beta / macmirror@dev
> brew install --cask angelvelasquezdev/tap/macmirror@beta
> ```

## 📦 Available Casks

| Cask | Channel | Description | Release |
| :--- | :--- | :--- | :--- |
| [`macmirror`](Casks/macmirror.rb) | **Stable** | Official production release | [Latest Release](https://github.com/angelvelasquezdev/mac-mirror-macos/releases) |
| [`macmirror@beta`](Casks/macmirror@beta.rb) | **Beta** | Pre-releases & release candidates | [Pre-releases](https://github.com/angelvelasquezdev/mac-mirror-macos/releases) |
| [`macmirror@dev`](Casks/macmirror@dev.rb) | **Develop** | Automated rolling builds from `develop` | [Dev Channel](https://github.com/angelvelasquezdev/mac-mirror-macos/releases/tag/dev) |

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
brew upgrade --cask macmirror@beta  # For beta channel
brew upgrade --cask macmirror@dev   # For dev channel
```
