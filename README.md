# Aboudjem Homebrew Tap

A personal [Homebrew](https://brew.sh) tap for [Sleepless](https://github.com/Aboudjem/Sleepless) and other apps.

## Install

```sh
brew install --cask aboudjem/tap/sleepless
```

Then run the one-time passwordless grant (bundled inside the app) so it can toggle
lid-close sleep without a password prompt:

```sh
/Applications/Sleepless.app/Contents/Resources/grant.sh
```

## Casks

- **sleepless** — keep your Mac awake with the lid closed, on battery, with no external
  display, with a battery-floor auto-off. See [Aboudjem/Sleepless](https://github.com/Aboudjem/Sleepless).

## Roadmap to the official Homebrew Cask

Sleepless ships through this personal tap for now. Submitting it to the official
`Homebrew/homebrew-cask` is a later milestone, gated by Homebrew's published rules:

- **Notability:** a self-submitted cask is rejected under **225 stars, 90 forks, 90
  watchers** (third-party submissions: 75 / 30 / 30). See
  [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks).
- **Signing:** the app must launch with Gatekeeper enabled, i.e. it needs to be
  **notarized**. Sleepless is currently ad-hoc signed (no paid Apple Developer ID).

Until both are met, this tap is the supported one-line install path.
