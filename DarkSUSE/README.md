# DarkSUSE
My semi-minimal OpenSUSE Tumbleweed setup using the AwesomeWM and XORG
Auto installs all my desired packages for a main desktop machine, 
and includes config files for themeing the desktop and main apps.

# IS NOT CURRENTLY READY

## Machine/Bare-metal Setup:
BIOS > Enable UEFI
BIOS > Enable Virtual Machines
BIOS > Secure Boot? 

## Install Instructions
1.  Boot OpenSUSE TW install media
2.  Select Server Install
3.  Under Software Selection
    -   Select Details > Preferences > Required Only (Deselect "Recommended")
    -   Select KVM/QEMU
    -   Set all 5 YAST patterns to Taboo
4.  Under Network
    -   Set Hostname to desired (can be done later)
5.  Install & Reboot
6.  Login and Update System
```
sudo zypper dup
```

7.  Install git and Curl
```
sudo zypper in git gh curl
```
8.  Download and activate darkSUSE.sh Script:
```
mkdir ~/GitHub/dotfiles
cd ~/GitHub/dotfiles
git clone https://github.com/CatskinnerTech/DarkSUSE
cd DarkSUSE
exec darkSUSE.sh
```

## Packages and Configs Included
Below is a list of all packages included in the installation script
and which have custom themes or config files. (darkSUSE.sh)

0.  Excludes all YAST & Uses Required Only
1.  Includes the following packages:
    1.  XORG
    2.  LightDM
    3.  Awesome
    4.  'gh' (GitHub CLI- Use SSH keys are ~/.ssh and Token)
    5.  Pipewire...?
    6.  Alacritty
    7.  Zellij
    8.  Neovim
    9.  Thunar
    10.  Rofi
    11. Brave-Browser
    12. zzz 

2.  Includes config or theme files for the following:
    1.  LightDM
    2.  Awesome
    3.  Alacritty
    4.  Zellij
    5.  Neovim
    6.  Rofi
    7.  Browser Themes
        -   Brave
        -   Floorp
    8.  Fastfetch
    9.  Thunderbird
    10.  Office - MS Office Compatibility

## Flatpaks and Configs Included
W

1.  Flatpak
    1.  Flatseal
    2.  Floorp
    3.  Brave-Browser?
    4.  
