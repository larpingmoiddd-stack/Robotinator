# Robotinator

A fast, lightweight **native C** multi-pane terminal emulator built with **GTK3** and **VTE**.

Inspired by Terminator, **Robotinator** automatically reads `/etc/shells` and lets you spawn **different shells in every split pane on the fly**—no profile setup required.

## Quick Install (Debian / Ubuntu / Linux Mint)

```sh
git clone https://github.com/larpingmoiddd-stack/Robotinator && cd Robotinator && make && sudo make install
```

## Features
- **Instant Per-Pane Shell Switching:** Pick any shell from `/etc/shells` (`bash`, `zsh`, `fish`, `elvish`, `xonsh`, `ksh`, `rc`, `pwsh`) before splitting.
- **Infinite Recursive Splits:** Split any pane horizontally or vertically into custom grids.
- **Broadcast Mode:** Send keystrokes to every open terminal pane simultaneously.
- **Pure Native C:** Compiles to a tiny, zero-bloat ELF binary (~7 KB `.deb`).

## Keyboard Shortcuts

| Shortcut | Action |
| :--- | :--- |
| `Ctrl + Shift + O` | Split active pane horizontally |
| `Ctrl + Shift + E` | Split active pane vertically |
| `Ctrl + Shift + B` | Toggle Broadcast Mode across all panes |
| `Ctrl + Shift + C` | Copy selection to clipboard |
| `Ctrl + Shift + V` | Paste from clipboard |

## Build from Source

```sh
sudo apt install -y build-essential pkg-config libgtk-3-dev libvte-2.91-dev
make
sudo make install
```
