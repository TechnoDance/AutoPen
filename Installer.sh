#!/bin/sh
#important updates
apt-get update -y # To get the latest package lists
apt-get upgrade -y
parrot-upgrade -y # Make sure dist is up to date
apt-get dist-upgrade -y # Upgrade distribution

#install stuff
apt-get install git -y
apt-get install gedit -y
apt-get install leafpad -y
apt-get install tilix -y
apt install ruby --classic -y
apt install keepassxc -y
apt install libdvdnav4 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg -y # Essential packages
apt-get install aircrack-ng binwalk gobuster hydra nikto nmap rustscan sqlmap steghide -y # Tools

# Install brave
apt install apt-transport-https curl -y # Start installing brave
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser
apt-get install snapd -y

# Now install docker (warning this bit is long)
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" | \
  sudo tee /etc/apt/sources.list.d/docker-engine.list
sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo gpasswd -a "${USER}" docker

#install gsrd for downloading of repos
gem install bundler # Required package for GSRD and start installing GSRD 
gem install gsrd
sleep 2
echo "please enter token for Github starred repo downloader"
read token
xterm -e "gsrd $token"

#install wifi pumpkin
apt-get install iptables iw net-tools wireless-tools hostapd
echo "remember to come back and do the pumpkin install, this just does the download"
git clone 

#install lxc
apt-get install libpam-cgfs libcap libapparmor libselinux libseccomp libgnutls liblua python3-dev
sudo snap install lxd
lxd init
lxc launch images:kali/current/amd64 kali1
xterm -e "xc exec kali1 -- apt update"
xterm -e "xc exec kali1 -- apt install -y kali-linux-default kali-desktop-xfce"
xterm -e "lxc exec kali1 -- adduser kali"
xterm -e "lxc exec kali1 -- usermod -aG sudo kali"
xterm -e "lxc exec kali1 -- sed -i '1 i\TERM=xterm-256color' /home/kali/.bashrc"
lxc exec kali1 -- sh -c "echo 'Set disable_coredump false' > /etc/sudo.conf"
echo "please change the kali lxc password for kali1 with 'lxc exec kali1 -- passwd' after 'lxc start kali1'"
lxc stop kali1

#install lazy script 
git clone https://github.com/arismelachroinos/lscript.git
sleep 2
echo $(cd lscript) # Start installing lscrip
echo $(ls)
echo $(chmod +x install.sh)
xterm -hold -e "./install.sh"
cd ..

#etc