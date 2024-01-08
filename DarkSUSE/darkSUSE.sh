#!/bin/bash
# ------------------------------------------------------------------
# Run Script with "sudo" command: < sudo ./darkSUSE.sh >
# 
# It will prompt for password and then execute
# ------------------------------------------------------------------
# ------------------------------------------------------------------
# SOURCE  Outside Files if functions are kept there:
# source ./keypackages.sh
# source ./keyconfigs.sh


# ------------------------------------------------------------------
# Initial Setup and Test
RC='\e[0m'     # Reset Colors
RED='\e[31m'
YELLOW='\e[33m'
GREEN='\e[32m'

# ------------------------------------------------------------------
# A check function used over and over-

command_exists () {
    command -v $1 >/dev/null 2>&1;
}

# ------------------------------------------------------------------
# Check the Environment for Essentials:

checkEnv() {
    ## Check for requirements.
    REQUIREMENTS='curl groups sudo'
    if ! command_exists ${REQUIREMENTS}; then
        echo -e "${RED}To run me, you need: ${REQUIREMENTS}${RC}"
        exit 1
    fi


    ## Check for the Zypper Package Manager 
    PACKAGEMANAGER='zypper'
    for pgm in ${PACKAGEMANAGER}; do
        if command_exists ${pgm}; then
            PACKAGER=${pgm}
            echo -e "Using ${pgm}"
        fi
    done

    if [ -z "${PACKAGER}" ]; then
        echo -e "${RED}Can't find a supported package manager"
        exit 1
    fi


    ## Check if the current directory is writable.
    GITPATH="$(dirname "$(realpath "$0")")"
    if [[ ! -w ${GITPATH} ]]; then
        echo -e "${RED}Can't write to ${GITPATH}${RC}"
        exit 1
    fi


    ## Check SuperUser/Wheel Group.
    SUPERUSERGROUP='wheel sudo root'
    for sug in ${SUPERUSERGROUP}; do
        if groups | grep ${sug}; then
            SUGROUP=${sug}
            echo -e "Super user group ${SUGROUP}"
        fi
    done


    ## Check if member of the sudo group.
    if ! groups | grep ${SUGROUP} >/dev/null; then
        echo -e "${RED}You need to be a member of the sudo group to run me!"
        exit 1
    fi
}

# -------------------------------------------------------------------
# Install Dependencies:

installDepend() {
    ## Check for terminal and shell dependencies.
    DEPENDENCIES1='bash bash-completion'
    DEPENDENCIES2='autojump'
    DEPENDENCIES2='autojump-git'
    DEPENDENCIES3='tar neovim bat'
    echo -e "${YELLOW}Installing dependencies...${RC}"
    sudo ${PACKAGER} install -yq ${DEPENDENCIES3}
}

# -------------------------------------------------------------------
# Installing Starship for Terminal and BASH

installStarship(){
    if command_exists starship; then
        echo "Starship already installed"
        return
    fi

    if ! curl -sS https://starship.rs/install.sh|sh;then
        echo -e "${RED}Something went wrong during starship install!${RC}"
        exit 1
    fi
}

# -------------------------------------------------------------------
# Install Key Packages from the distro's repos... or one package at a time?

installDistroPkgs(){
    if condition; then
        command ...
    fi
}

# -------------------------------------------------------------------





# -------------------------------------------------------------------
# Config Files or just <bashrc>?

linkConfig() {
    ## Get the correct user home directory.
    USER_HOME=$(getent passwd ${SUDO_USER:-$USER} | cut -d: -f6)
    ## Check if a bashrc file is already there.
    OLD_BASHRC="${USER_HOME}/.bashrc"
    if [[ -e ${OLD_BASHRC} ]]; then
        echo -e "${YELLOW}Moving old bash config file to ${USER_HOME}/.bashrc.bak${RC}"
        if ! mv ${OLD_BASHRC} ${USER_HOME}/.bashrc.bak; then
            echo -e "${RED}Can't move the old bash config file!${RC}"
            exit 1
        fi
    fi

    echo -e "${YELLOW}Linking new bash config file...${RC}"
    ## Make symbolic link.
    ln -svf ${GITPATH}/.bashrc ${USER_HOME}/.bashrc
    ln -svf ${GITPATH}/starship.toml ${USER_HOME}/.config/starship.toml
    ln -svf ${GITPATH}/
}

# -------------------------------------------------------------------
# Run the Script Functions

checkEnv
installDepend
installStarship
if linkConfig; then
    echo -e "${GREEN}Done!\nrestart your shell to see the changes.${RC}"
else
    echo -e "${RED}Something went wrong!${RC}"
fi






# -------------------------------------------------------------------




# -------------------------------------------------------------------
# CHROME EXTENSIONS -- SWITCH TO BRAVE?
# #!/bin/bash

# install_chrome_extension () {
#   preferences_dir_path="/opt/google/chrome/extensions"
#   pref_file_path="$preferences_dir_path/$1.json"
#   upd_url="https://clients2.google.com/service/update2/crx"
#   mkdir -p "$preferences_dir_path"
#   echo "{" > "$pref_file_path"
#   echo "  \"external_update_url\": \"$upd_url\"" >> "$pref_file_path"
#   echo "}" >> "$pref_file_path"
#   echo Added \""$pref_file_path"\" ["$2"]
# }
#
# if ! which "google-chrome" ; then
#   wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub \
#   | sudo apt-key add -
#   echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' \
#   | sudo tee /etc/apt/sources.list.d/google-chrome.list
#   sudo apt-get update
#   sudo apt install google-chrome-stable
# else
#   echo Chrome already installed
# fi
#
# install_chrome_extension "cfhdojbkjhnklbpkdaibdccddilifddb" "adblock plus"
# install_chrome_extension "fmkadmapgofadopljbjfkapdkoienihi" "react dev tools"
# install_chrome_extension "anmidgajdonkgmmilbccfefkfieajakd" "save pinned tabs"
# install_chrome_extension "dbepggeogbaibhgnhhndojpepiihcmeb" "vimium"
#
# -------------------------------------------------------------------
#
