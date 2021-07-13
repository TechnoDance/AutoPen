#!/bin/bash
echo "+++++++++++++++++++++"
echo "A|u|t|o P|e|n|t|e|s|t"
echo "+++++++++++++++++++++"
echo "Welcome to my automated pentest suite of scripts for automation and useful tools."
echo "Please be sure you are running as root, if you are not ctrl c to stop the script and start as sudo"
echo "Would you like to update your system (apt) (y/n)"
if [ $option == "y" ]; then
   apt-get update -y && apt-get upgrade -y
else
   sleep 2
fi
echo "script will begin in 10s"
sleep 10
echo "First enter some basic paramiters and we shall get started (some scripts may need to have this independantly done too)."
sleep 2
echo "Please enter the interface you would like to use."
read interface1
echo "We will now put this interface into monitor mode."
airmon-ng start $interface1
ifconfig
echo "Enter mon mode interface name (EX:wlan1mon)"
read $mon
echo "We will now use $mon"
mon=$mon
echo "what will you be doing today"
echo "1. Aircrack Automated"
echo "1.2 Aircrack mostly automated (experimental)"
echo "2. Metasploit"
echo "3. Burpsuite"
echo "4. Airgeddon"
echo "5. binwalk"
echo "6. gobuster"
echo "7. hydra"
echo "8. john"
echo "9. msfvenom"
echo "10. nikto"
echo "11. nmap"
echo "12. rustscan"
echo "13. sqlmap"
echo "14. steghide"
echo "15. the harvester"
echo "16. zbarimg"
sleep 10
read option
sleep 0
if [ $option == "1" ]; then
	xterm -hold -e "bash /Start/Scripts/aircrack-ng/AutoAir.sh"
elif [ $option == "1.2" ]; then
	echo "this function is not yet working"
elif [ $option == "2" ]; then
	xterm -hold -e ""
elif [ $option == "3" ]; then
	echo "this function is not yet working"
	xterm -hold -e ""
elif [ $option == "4" ]; then
	xterm -hold -e "sudo bash /Start/Scripts/airgeddon/airgeddon.sh"
elif [ $option == "5" ]; then
	xterm -hold -e "bash /Start/Scripts/binwalk/binwalk.sh"
elif [ $option == "6" ]; then
	xterm -hold -e "bash /Start/Scripts/gobuster/gobuster.sh"
elif [ $option == "7" ]; then
	xterm -hold -e "bash /Start/Scripts/hydra/hydra.sh"
elif [ $option == "8" ]; then
	xterm -hold -e "bash /Start/Scripts/john/john.sh"
elif [ $option == "9" ]; then
	xterm -hold -e "bash /Start/Scripts/msfvenom/msfvenom.sh"
elif [ $option == "10" ]; then
	xterm -hold -e "bash /Start/Scripts/nikto/nikto.sh"
elif [ $option == "11" ]; then
	xterm -hold -e "bash /Start/Scripts/nmap/nmap.sh"
elif [ $option == "12" ]; then
	xterm -hold -e "bash /Start/Scripts/rustscan/rustscan.sh"
elif [ $option == "13" ]; then
	xterm -hold -e "bash /Start/Scripts/sqlmap/sqlmap.sh"
elif [ $option == "14" ]; then
	xterm -hold -e "bash /Start/Scripts/steghide/steghide.sh"
elif [ $option == "15" ]; then
	xterm -hold -e "bash /Start/Scripts/theHarvester/theHarvester.sh"
elif [ $option == "16" ]; then
	xterm -hold -e "bash /Start/Scripts/zbarimg/zbarimg.sh"
else
	echo "invalid choice"