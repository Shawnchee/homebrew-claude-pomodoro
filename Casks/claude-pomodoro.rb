cask "claude-pomodoro" do
  version "0.1.2"
  sha256 "77c7e44daa1a747a308a2ce1a535ff25a8e89114cfb8fd108d7626a8f4b679a2"

  url "https://github.com/Shawnchee/claude-pomodoro/releases/download/v#{version}/Claude.Pomodoro-#{version}-arm64.dmg"
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
