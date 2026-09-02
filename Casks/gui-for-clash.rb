cask "gui-for-clash" do
  version "1.26.1"

  on_arm do
    url "https://github.com/GUI-for-Cores/GUI.for.Clash/releases/download/v#{version}/GUI.for.Clash-darwin-arm64.zip"
  end

  on_intel do
    url "https://github.com/GUI-for-Cores/GUI.for.Clash/releases/download/v#{version}/GUI.for.Clash-darwin-amd64.zip"
  end

  name "GUI.for.Clash"
  desc "Modern GUI for Clash, built with Wails and Vue 3"
  homepage "https://github.com/GUI-for-Cores/GUI.for.Clash"

  license "GPL-3.0-or-later"

  app "GUI.for.Clash.app"

  livecheck do
    url "https://github.com/GUI-for-Cores/GUI.for.Clash/releases"
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/GUI.for.Clash",
    "~/Library/Preferences/com.gui-for-cores.GUI.for.Clash.plist",
    "~/Library/Saved Application State/com.gui-for-cores.GUI.for.Clash.savedState",
  ]
end