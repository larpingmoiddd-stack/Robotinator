# Robotinator
A fast, lightweight **native C** multi-pane terminal emulator built with **GTK3** and **VTE**.

## Features
- **Instant Per-Pane Shell Switching:** Pick any shell from `/etc/shells` (`bash`, `zsh`, `fish`, `elvish`, `xonsh`, `ksh`, `rc`, `pwsh`) before splitting.
- **Recursive Splits:** `Ctrl+Shift+O` (horizontal) and `Ctrl+Shift+E` (vertical).
- **Broadcast Mode:** `Ctrl+Shift+B` to send keystrokes to every open pane simultaneously.

## Build & Install
```sh
sudo apt install build-essential pkg-config libgtk-3-dev libvte-2.91-dev
make && sudo make install
```
