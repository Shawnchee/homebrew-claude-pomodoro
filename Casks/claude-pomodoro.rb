cask "claude-pomodoro" do
  version "0.1.6"
  sha256 "28bd5abeb0eb4bf369df68a7015f182272e222f424496181734c51efb72fc7b7"

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
