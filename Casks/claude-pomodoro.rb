cask "claude-pomodoro" do
  version "0.1.0"
  sha256 "b64634b311dadc4ca2c45df37d93437a24abd362792d8b824315b76d3c9df23b"

  url "https://github.com/Shawnchee/claude-pomodoro/releases/download/v#{version}/Claude-Pomodoro-#{version}-arm64.dmg"
  name "Claude Pomodoro"
  desc "Pixel-art pomodoro timer with always-on-top floating window"
  homepage "https://github.com/Shawnchee/claude-pomodoro"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Claude Pomodoro.app"

  zap trash: [
    "~/Library/Application Support/claude-pomodoro",
    "~/Library/Logs/claude-pomodoro",
    "~/Library/Preferences/com.shawnchee.claudepomodoro.plist",
    "~/Library/Saved Application State/com.shawnchee.claudepomodoro.savedState",
  ]
end
