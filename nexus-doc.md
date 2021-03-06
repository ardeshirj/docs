# Nexus-Doc
android-sdk commands.

## Backup & Restore
```shell
# Check first
  adb devices
  # Should be an output like:
  xxxxx   device
  # If no output like that then
    adb kill-server
    adb start-server

# Backup
  adb backup -all -apk

# Restore
  adb restore [backup file]
```

## Flashing
```shell
# Start the device in fastboot mode (This will restart your device)
  adb reboot bootloader

# If necessary, unlock the device's bootloader by running:
  sudo fastboot oem unlock # Confirming will erases all data on the target device

# Flash and install
  cd [the untar directory]
  sudo ./flash-all

# Lock the bootloader after install
  adb reboot bootloader
  sudo fastboot oem lock
```

## Sideloading
```shell
# Start the device in fastboot mode (This will restart your device)
  adb reboot bootloader

# Select "Recovery" option
# Should see Android logo with a exclamation
# Press power first and then volume up to get to stock recovery
# From stock recovery select apply update from ADB

# Send file for sideloading
  adb sideload filename.zip
  # If there is a permission issue
    adb kill-server
    sudo adb start-server
    adb silde load filename.zip

# Reboot after installing select reboot system now
```
