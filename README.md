# Linux Test "Virus" - Terminal Prank Script

A **completely harmless** prank script that creates visual chaos in your friend's Linux terminal. No files are modified, no settings are changed - just pure terminal mayhem!

## What It Does

When launched, the script creates a variety of fun visual effects in the terminal:

- **Matrix rain** - random characters appearing across the screen
- **Fake system messages** - funny "hacking" alerts and warnings
- **Fake progress bars** - "Hacking mainframe... [####] 87%"
- **Glitch text** - corrupted-looking messages
- **Screen shake** - text with random offsets
- **Fake countdowns** - dramatic self-destruct timers (that do nothing)
- **Character floods** - random symbols filling the screen
- **Hacker typing** - simulated "hacking" commands
- **Fake file scanning** - pretends to find "secret files"
- **ASCII art** - skulls, bugs, and warning signs
- **Big warning banners** - dramatic "VIRUS ACTIVATED" messages

## How to Stop It

Type the secret command:

```
Virus-stop
```

The script will immediately:
1. Stop all effects
2. Clear the screen
3. Show a friendly message confirming it was just a prank
4. Restore the terminal to normal

You can also press `Ctrl+C` to stop it at any time.

## Usage

### Quick Start

```bash
# Clone the repo
git clone https://github.com/vchilina27-design/Linux-Test-Virus.git

# Enter the directory
cd Linux-Test-Virus

# Make it executable (if not already)
chmod +x virus.sh

# Run the prank!
./virus.sh
```

### Send to a Friend

```bash
# Option 1: Have them run it directly
bash <(curl -s https://raw.githubusercontent.com/vchilina27-design/Linux-Test-Virus/main/virus.sh)

# Option 2: Copy the file to their machine
scp virus.sh friend@their-machine:~/virus.sh
ssh friend@their-machine "chmod +x ~/virus.sh && ~/virus.sh"
```

## Safety

This script is **100% harmless**:
- No files are created, modified, or deleted (except a small temp lockfile)
- No system settings are changed
- No network connections are made
- No data is collected or sent anywhere
- Terminal is fully restored after stopping
- Works in any standard Linux terminal emulator

## Requirements

- Linux / macOS / WSL
- Bash 4.0+
- Standard terminal utilities (`tput`)

## Disclaimer

This is a **prank tool** meant for fun between friends. Always make sure the person you're pranking has a good sense of humor! Be responsible and don't use this in professional or sensitive environments.

## License

MIT - Use it, share it, laugh with it!
