cask "easytier-gui" do
  version "2.6.4"

  on_arm do
    sha256 "29358d4b565f890b872c72092aa6391636700aae229b3a6baedaf9544b1d1407"

    url "https://github.com/EasyTier/EasyTier/releases/download/v#{version}/easytier-gui_#{version}_aarch64.dmg"
  end

  on_intel do
    url "https://github.com/EasyTier/EasyTier/releases/download/v#{version}/easytier-gui_#{version}_amd64.dmg"
  end

  name "EasyTier GUI"
  desc "Simple, secure, decentralized VPN"
  homepage "https://github.com/EasyTier/EasyTier"

  app "EasyTier.app"

  livecheck do
    url "https://github.com/EasyTier/EasyTier/releases"
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/EasyTier",
    "~/Library/Preferences/com.easytier.EasyTier.plist",
    "~/Library/Saved Application State/com.easytier.EasyTier.savedState",
  ]
end