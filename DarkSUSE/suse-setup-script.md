# OpenSUSE TumbleWeed Config Notes and Script

## Initial Install Set-up Selections
0. Select Server
1. Software 
    - Select Details > Preferences > Required Only (Deselect "Recommended")
    - Taboo All Yast Patterns (5)
    - QEMU/KVM
    - AppArmor? SE Linux? Firewall?
2. Disable Firewall? Needed for only printer set-up?
3. Finish Install and Reboot
4. Install git and Curl
```
sudo zypper in git and curl
```
5. Download and activate DarkSuSE Script:
```
mkdir ~/GitHub/dotfiles
cd ~/GitHub/dotfiles
git clone https://github.com/CatskinnerTech/DarkSUSE
cd DarkSUSE
sudo run darksuse.bash
```
6. Follow along with the Script below:

## Key System Packages for Awesome WM
0. Update OpenSuSE TW
```
sudo zypper dup
```
1. Install: XORG, LightDM, AWESOME, Pipewire(audio)?
```
sudo zypper in xorg lightdm awesome
sudo zypper in pipewire
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target
```
2. Install Key Applications
```
sudo zypper in alacritty neovim MozillaFirefox thunar rofi
```
3. Add Brave, Librewolf, or Mullvad:
Brave
```
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
```
Librewolf
```
sudo ...
```
Mullvad Flathub or see below:
```
cd ~/.local/share && wget https://mullvad.net/en/download/browser/linux64/latest -O mullvad-browser.tar.xz
tar -xvf mullvad-browser.tar.xz mullvad-browser
rm mullvad-browser.tar.xz && cd mullvad-browser
./start-mullvad-browser.desktop --register-app
or
./start-mullvad-browser.desktop --help to see more options.
Run ./start-mullvad-browser.desktop --setDefaultBrowser to set Mullvad Browser as your default browser.
```
4. Install Nerd Fonts
Install MS Compatability Fonts
```
sudo zypper install fetchmsttfonts
```
Install Nerdfonts:
```
https://www.nerdfonts.com/font-downloads
```
MesloLG and FiraCode
```
cd Downloads/
unzip Meslo FiraCode
rm Meslo.zip FiraCode.zip
mkdir ~/.fonts
mv * ~/.fonts
cd ~/.fonts
fc-cache -vf
```

## Add Productivity Applications
1. Add printing and sync/backup support
```
sudo zypper in syncthing rsync hplip
```
2. Add Security Apps
```
sudo zypper in flatpak bitwarden discover-softwaremgmt
```
3. System Monitoring
```
sudo zypper in fastfetch infocenter system-monitor  virt-top htop filelite solaar
```
4. Gaming
```
sudo zypper in steam lutris AMD
```
5. Productivity Apps
```
sudo zypper in inkscape kate thunderbird gwenview spectacle vlc mediaplayer kcalc imagewriter 
```
6. Engineering
```
FreeCAD orca-slicer
```

## Install Flatpaks
```
sudo flatpak install flatseal discord battle.net office? steam?
```

## Install Configs/dotfiles
1. Starship
2. Beautful Bash
3. Neovim
4. Allacrity
5. Awesome WM
6. LightDM
7. Rofi
8. Browser Themes (verticle tabs, visible tabs, bitwarden, dark mode)
    - Brave
    - Mullvad/Librewolf
9. Thunderbird
10. Office settings (MS compliant)
11. Fastfetch
12. 
