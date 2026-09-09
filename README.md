# Homebrew Tap

Personal Homebrew tap providing macOS Casks for selected applications.

## Installation

```bash
brew tap ga0my/tap
````

Or install a cask directly:

```bash
brew install --cask ga0my/tap/easytier-gui
brew install --cask ga0my/tap/gui-for-clash
brew install --cask ga0my/tap/gui-for-singbox
```

## Available Casks

| Cask              | Description      | Architecture          |
| ----------------- | ---------------- | --------------------- |
| `easytier-gui`    | EasyTier GUI     | Apple Silicon / Intel |
| `gui-for-clash`   | GUI for Clash    | Apple Silicon / Intel |
| `gui-for-singbox` | GUI for sing-box | Apple Silicon / Intel |

## Update

```bash
brew update
brew upgrade --cask
```

## Uninstall

```bash
brew uninstall --cask easytier-gui
brew uninstall --cask gui-for-clash
brew uninstall --cask gui-for-singbox
```

## Upstream Projects

* EasyTier: https://github.com/EasyTier/EasyTier
* GUI.for.Clash: https://github.com/GUI-for-Cores/GUI.for.Clash
* GUI.for.SingBox: https://github.com/GUI-for-Cores/GUI.for.SingBox
