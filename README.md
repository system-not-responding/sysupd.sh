# Arch System Update Script

## Description

This script updates both Arch Linux system packages and AUR (Arch User Repository) packages using `yay` as the AUR helper. The script provides an interactive prompt to confirm whether to proceed with the update process.

The script assumes that `yay` and `neofetch` are already installed on the system. It uses `neofetch` to display system information after completing the updates (if performed).

---

## Dependencies

- **Arch Linux**: This script is designed for Arch-based systems.
- **yay**: AUR helper tool, used to update packages from the AUR.
- **neofetch**: System information tool, used to display system details.

Both `yay` and `neofetch` must be installed for this script to work properly.

---

## How It Works

1. The script displays a prompt: "Perform System Updates?" with options `[Y/n]`.
2. If the user responds with "Y" or "y":
   - The script updates all system packages using `sudo pacman -Syu`.
   - The script then updates all AUR packages using `yay -Syu`.
3. After completing the updates (if any), the script displays a message prompting the user to press any key to continue.
4. If the user responds with anything other than "Y" or "y", the script exits without performing updates but still shows system information using `neofetch`.

---

## Usage

```bash
# Save the script as a .sh file (e.g., arch-update.sh)
chmod +x arch-update.sh
./arch-update.sh
```

### Example Interaction:

```bash
$ ./arch-update.sh
Perform System Updates?[Y/n] Y
:: Synchronizing packages...
[...pacman output...]
:: Updating system packages...
[...pacman output...]
:: Updating AUR packages...
[...yay output...]

Press any key to continue...
```

If you choose not to perform updates:

```bash
$ ./arch-update.sh
Perform System Updates?[Y/n] n

Program Exited
```

---

## Notes

- **Root Privileges**: Some commands (like `sudo pacman -Syu`) require root privileges. Ensure you have the necessary permissions.
- **Backup**: Always back up important data before performing system updates to avoid potential issues.
- **AUR Updates**: The script assumes that `yay` is properly configured and in your PATH.

---

## Improvements

1. Consider adding error handling for failed commands (e.g., notify the user if `yay` or `neofetch` is not found).
2. Add a confirmation prompt before performing updates.
3. Include additional output messages to show progress during updates.

---

This documentation provides a clear understanding of how the script works, its dependencies, and usage instructions.
