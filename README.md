# Clamper

<p align="center">
  <img src="assets/Clamper-icon-default.png" alt="Clamper Icon" width="200" height="200">
</p>

<p align="center">
  <strong>A macOS utility for customizing menu bar icon spacing</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-15.0+-007AFF?style=flat-square&logo=apple&logoColor=white" alt="macOS 15.0+">
  <img src="https://img.shields.io/badge/Swift-6.2+-F05138?style=flat-square&logo=swift&logoColor=white" alt="Swift 6.2+">
  <img src="https://img.shields.io/badge/SwiftUI-Latest-0D96F6?style=flat-square&logo=swift&logoColor=white" alt="SwiftUI">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="MIT License">
</p>

---

## Screenshot

<p align="center">
  <img src="assets/Clamper-screenshot-1.png" alt="Clamper Screenshot" width="500">
</p>

---

## Overview

Clamper lets you customize the spacing between menu bar icons on macOS.

### Key Features

- **Spacing Control** — Adjust the pixel distance between menu bar icons
- **Padding Control** — Fine-tune selection padding independently or auto-linked to spacing
- **Live Preview** — See a real-time icon strip preview as you adjust
- **Restore Defaults** — One click to reset to macOS system defaults

---

## Requirements

- **macOS 15.0** (Sequoia) or later

---

## Installation

### Option 1: Install via Homebrew

```bash
brew install --cask validatedev/tap/clamper
```

### Option 2: Download Pre-built Release

1. Download the latest `.dmg` from the [Releases](https://github.com/validatedev/Clamper/releases) page
2. Open the DMG and drag **Clamper** to your Applications folder
3. Launch the app from Applications or Spotlight

### Option 3: Build from Source

1. Clone the repository:
   ```bash
   git clone https://github.com/validatedev/Clamper.git
   cd Clamper
   ```

2. Open the project in Xcode:
   ```bash
   open Clamper.xcodeproj
   ```

3. **Configure Code Signing** (first time only):
   ```bash
   # Copy the development config template
   cp Config/Development.shared.xcconfig Config/Development.xcconfig

   # Edit the file and replace YOUR_TEAM_ID with your Apple Developer Team ID
   # You can find your Team ID at: https://developer.apple.com/account
   # OR in Xcode: Settings → Accounts → [Your Account] → Team ID
   nano Config/Development.xcconfig
   ```

4. Build and run (⌘R) or archive for distribution (Product → Archive)

---

## Building & Development

### Prerequisites

- Xcode 26.0 or later
- macOS 15.0 or later (for running)
- Apple Developer account (free or paid, for code signing)

### Build Commands

```bash
# Build for development
xcodebuild -scheme Clamper -configuration Debug build

# Build for release
xcodebuild -scheme Clamper -configuration Release build

# Run tests
xcodebuild -scheme Clamper test
```

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- [Barbee](https://apps.apple.com/us/app/barbee-hide-menu-bar-items/id1548711022) — For providing the initial pixel values for menu bar spacing
- [TighterMenubar](https://github.com/vanja-ivancevic/TighterMenubar) — Open-source macOS app by Vanja Ivancevic for adjusting menu bar spacing
- [Menu Bar Spacing](https://sindresorhus.com/menu-bar-spacing) — Free macOS utility by Sindre Sorhus for adjusting menu bar spacing
- [SF Symbols](https://developer.apple.com/sf-symbols/) — Apple's iconography system
- [Sparkle](https://sparkle-project.org/) — Open-source software update framework
- [SwiftAgents](https://github.com/twostraws/SwiftAgents) — Base `AGENTS.md` file for best practices

---

<p align="center">
  Made with 🦆
</p>
