cask "claude-pomodoro" do
  version "0.1.4"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
