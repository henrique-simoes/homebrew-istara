cask "istara" do
  version "2026.09.27.4"
  sha256 "1f9b550f361c62a8ce60825e1f0b61ca2cbd4ab4abf004d4f4a96fe8c73c3500"

  url "https://github.com/henrique-simoes/Istara/releases/download/v#{version}/Istara-#{version}.dmg",
      verified: "github.com/henrique-simoes/Istara/"

  name "Istara"
  desc "Local-first AI agents for UX Research — your data never leaves your machine"
  homepage "https://github.com/henrique-simoes/Istara"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Istara.app"

  zap trash: [
    "~/Library/Application Support/com.istara.desktop",
    "~/Library/Caches/com.istara.desktop",
    "~/Library/LaunchAgents/com.istara.server.plist",
    "~/Library/Logs/Istara",
    "~/Library/Preferences/com.istara.desktop.plist",
    "~/Library/Saved Application State/com.istara.desktop.savedState",
    "~/.istara",
  ]
end
