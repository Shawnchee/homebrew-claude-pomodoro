cask "claude-pomodoro" do
  version "0.2.0"
  sha256 "d70735ec9e1d16c8e407e5d0db3bc3e8f64bf8f00a80c88dd8150a843e53c991"

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
