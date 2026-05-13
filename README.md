# homebrew-claude-pomodoro

Homebrew tap for [Claude Pomodoro](https://github.com/Shawnchee/claude-pomodoro) — a pixel-art pomodoro timer with an always-on-top floating window.

## Install

**Preferred** — skip the macOS Gatekeeper warning entirely by passing `--no-quarantine`:

```bash
brew install --cask --no-quarantine shawnchee/claude-pomodoro/claude-pomodoro
```

The `--no-quarantine` flag tells Homebrew to skip applying the `com.apple.quarantine` extended attribute to the app. By doing this you're telling your Mac you trust the source — review the [main repo](https://github.com/Shawnchee/claude-pomodoro) and the [cask file](Casks/claude-pomodoro.rb) before running if that matters to you.

**Without the flag** — works too, but the first launch will trigger the "Apple could not verify" warning (see workaround below):

```bash
brew install --cask shawnchee/claude-pomodoro/claude-pomodoro
```

**Two-step alternative** — tap once, then install with the short name:

```bash
brew tap shawnchee/claude-pomodoro
brew install --cask --no-quarantine claude-pomodoro
```

## Requirements

- macOS 13 (Ventura) or later
- Apple Silicon (M1/M2/M3/M4) — Intel Mac builds may be added in a later release

## First-launch warning

The app is unsigned, so macOS Gatekeeper will block the first launch:

1. Open Launchpad or `/Applications/` and try to open Claude Pomodoro
2. macOS shows *"Apple could not verify 'Claude Pomodoro' is free of malware..."* — click **Done**
3. Open **System Settings → Privacy & Security**
4. Scroll to the Security section and click **Open Anyway** next to the blocked app
5. Re-launch the app and confirm in the dialog

This is one-time per install. Subsequent launches open normally.

## Updating

```bash
brew update
brew upgrade --cask claude-pomodoro
```

## Uninstall

```bash
brew uninstall --cask claude-pomodoro
brew untap shawnchee/claude-pomodoro
```

## Issues

Report app bugs at the [main repo](https://github.com/Shawnchee/claude-pomodoro/issues). This tap repo is just a single cask file — issues here should be limited to cask metadata problems (wrong checksum, broken URL, etc.).
