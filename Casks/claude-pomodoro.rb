cask "claude-pomodoro" do
  version "0.1.3"
  sha256 "b2181f2d2171ecb05f22adc6b0e87201da80c0643de80126bce2e7e55dce61b7"

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
