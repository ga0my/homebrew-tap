cask "gui-for-singbox" do
  version "1.26.1"

  on_arm do
    url "https://github.com/GUI-for-Cores/GUI.for.SingBox/releases/download/v#{version}/GUI.for.SingBox-darwin-arm64.zip"
  end

  on_intel do
    url "https://github.com/GUI-for-Cores/GUI.for.SingBox/releases/download/v#{version}/GUI.for.SingBox-darwin-amd64.zip"
  end

  name "GUI.for.SingBox"
  desc "GUI program for sing-box, built with Vue 3 and Wails"
  homepage "https://github.com/GUI-for-Cores/GUI.for.SingBox"

  license "GPL-3.0-or-later"

  app "GUI.for.SingBox.app"

  livecheck do
    url "https://github.com/GUI-for-Cores/GUI.for.SingBox/releases"
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/GUI.for.SingBox",
    "~/Library/Preferences/com.gui-for-cores.GUI.for.SingBox.plist",
    "~/Library/Saved Application State/com.gui-for-cores.GUI.for.SingBox.savedState",
  ]
end