# Pubto Downloads

This repository contains official Pubto Desktop releases for macOS and
Windows.

## Download Pubto

Use the [Pubto downloads page](https://pubto.dev/downloads) for the recommended
installer, or open [GitHub Releases](https://github.com/vertex-ai-llc/pubto-downloads/releases)
to view every available package.

Each release includes SHA-256 checksums. Verify the checksum before installing
a package downloaded outside your browser's normal download flow.

## macOS

Download the DMG matching your Mac:

- Apple silicon: `pubto-desktop-macos-arm64.dmg`
- Intel: `pubto-desktop-macos-x64.dmg`

Pubto Desktop includes the background service and the `pubto` command. The app
can install or remove the command from the guided setup page.

Homebrew is also supported:

```sh
brew tap vertex-ai-llc/pubto
brew install --cask pubto
```

## Windows

Use `pubto-desktop-windows-x64-setup.exe` for the normal guided installation.
An MSI and a standalone CLI archive are also provided for managed environments.

## Pubto Skill

Paste this into a supported coding agent:

> Install or update the official Pubto Skill from https://github.com/vertex-ai-llc/pubto-skill.

The Skill guides installation when Pubto is missing, then helps select and
publish local apps, APIs, WebSocket services, approved TCP services, files,
folders, and sites.

## Support

Documentation and support are available at [pubto.dev](https://pubto.dev) and
`support@pubto.dev`.

