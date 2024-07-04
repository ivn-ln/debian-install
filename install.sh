# Initial setup
mkdir ~/Downloads
mkdir ~/Desktop
mkdir ~/Godot
mkdir ~/Projects
mkdir ~/Assets
cd ~/Godot
wget https://github.com/godotengine/godot/releases/download/4.2.2-stable/Godot_v4.2.2-stable_linux.x86_64.zip
unzip Godot_v4.2.2-stable_linux.x86_64.zip
mv Godot_v4.2.2-stable_linux.x86_64 ./4.2.2.x86_64
rm Godot_v4.2.2-stable_linux.x86_64.zip
wget https://github.com/godotengine/godot/releases/download/3.5.3-stable/Godot_v3.5.3-stable_x11.64.zip
unzip Godot_v3.5.3-stable_x11.64.zip
mv Godot_v3.5.3-stable_x11.64 ./3.5.3.64
rm Godot_v3.5.3-stable_x11.64.zip
cd ~/Downloads
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.1.1.11/android-studio-2024.1.1.11-linux.tar.gz
tar -xvzf android-studio-2024.1.1.11-linux.tar.gz
mv ~/Downloads/android-studio ~
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
sudo dpkg -i jdk-17_linux-x64_bin.deb

# Apps installation
sudo apt install nala
sudo nala update
sudo nala upgrade
sudo nala install zip unzip picom rofi vim awesome lightdm network-manager blueman flameshot polybar nitrogen qt5ct x11-utils zsh pavucontrol neofetch lxappearance kitty git fzf bluez-tools thunar thunar-archive-plugin mousepad libnotify-bin flatpak mpv sox arandr lxsession-logout btop xinput papirus-icon-theme qbittorrent mirage libgdk-pixbuf2.0-0 acpid -y
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i download\?build=stable\&os=linux-deb-x64
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq –install


# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/illarn/.bashrc
brew install zoxide

# Flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.telegram.desktop com.usebottles.bottles one.ablaze.floorp com.github.tchx84.Flatseal com.valvesoftware.Steam org.onlyoffice.desktopeditors com.github.calo001.luna org.kde.krita -y

# Installing configs and themes
clone https://github.com/ivn-ln/dotfiles.git
cp ~/Downloads/dotfiles/.config/. ~/.config/ -a
cp ~/Downloads/dotfiles/.zshrc ~/
mkdir ~/.local/share/rofi
mkdir ~/.local/share/rofi/themes
cp ~/Downloads/dotfiles/RofiTheme/catppuccin-mocha.rasi ~/.local/share/rofi/themes/
git clone https://github.com/ivn-ln/LowBatteryNotifier.git
cd LowBatteryNotifier
cp ./notify-battery.sh ~ -f
crontab cron
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ./JetBrainsMono
mkdir ~/.fonts
cp ./JetBrainsMono/. ~/.fonts/ -a
fc-cache -f -v
cp /.VarelaRound-Regular.ttf ~/.fonts/
mkdir ~/Wallpaper
cp ~/Downloads/dotfiles/Wallpaper/. ~/Wallpaper/ -a
mkdir ~/.themes
wget https://fonts.gstatic.com/s/varelaround/v20/w8gdH283Tvk__Lua32TysjIvoMGOD9gxZw.ttf -O VarelaRound-Regular.ttf
wget https://fonts.gstatic.com/s/notosans/v36/o-0IIpQlx3QUlC5A4PNb4j5Ba_2c7A.ttf -O NotoSans-VariableFont_wdth,wght.ttf
wget https://fonts.gstatic.com/s/notosans/v36/o-0OIpQlx3QUlC5A4PNr4DRFSfiM7HBj.ttf -O NotoSans-Italic-VariableFont_wdth,wght.ttf
cp NotoSans-VariableFont_wdth,wght.ttf ~/.fonts
cp NotoSans-Italic-VariableFont_wdth,wght.ttf ~/.fonts
cp VarelaRound-Regular.ttf ~/.fonts
cp ~/Downloads/dotfiles/Audio ~ -a
wget https://github.com/catppuccin/gtk/releases/download/v0.7.3/Catppuccin-Mocha-Standard-Teal-Dark.zip
unzip Catppuccin-Mocha-Standard-Teal-Dark.zip -d CatppuccinMochaTeal
cp ~/Downloads/CatppuccinMochaTeal/Catppuccin-Mocha-Standard-Teal-Dark ~/.local/share/themes -a
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus 
./papirus-folders -C cat-mocha-blue --theme Papirus-Dark
wget https://github.com/catppuccin/cursors/releases/download/v0.3.1/catppuccin-mocha-dark-cursors.zip
unzip catppuccin-mocha-dark-cursors.zip -d CatppuccinMochaDark
cp ~/Downloads/CatppuccinMochaDark ~/.local/share/icons/ -a
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# System configuration
sudo systemctl enable acpid
sudo localectl set-x11-keymap us,ru pc105 , grp:win_space_toggle
cd ~/Downloads
git clone https://github.com/ivn-ln/debian-install.git
sudo cp ~/Downloads/debian-install/interfaces /etc/network/
sudo cp ~/Downloads/debian-install/logind.conf  /etc/systemd/
sudo cp ~/Downloads/debian-install/lightdm.conf /etc/lightdm/
sudo mkdir /etc/acpi/
sudo mkdir /etc/acpi/events/
cd /etc/acpi/events/
sudo touch laptop-lid
sudo chmod a+w laptop-lid
echo "event=button/lid.*
action=/etc/acpi/laptop-lid.sh" >> laptop-lid
sudo touch laptop-lid.sh
sudo cp ~/Downloads/debian-install/laptop-lid.sh /etc/acpi/

# Cleanup
rm -r ~/Downloads/.
echo "Things to do after installation:
Reboot
Login into vscode and sync
Login into floorp and sync
Install android studio via android-studio command
Add git credentials and store them with 
git config --global credential.helper store"
