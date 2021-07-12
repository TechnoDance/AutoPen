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
echo "1. Aircrack"
echo "2. Metasploit"
echo "3. Burpsuite"
echo "4. Airgeddon"
echo "5."
echo "6."
sleep 10
read option
sleep 5
if [ $option == "1" ]; then
    bash /Start/Scripts/AutoAir1.sh
else
    sleep 0
fi
if [ $option == "2" ]; then
    echo "test2"
else
    sleep 0
fi
if [ $option == "3" ]; then
    echo "test3"
fi
else
    sleep 0
fi
if [ $option == "4" ]; then
    echo "test4"
else
    sleep 0
fi
if [ $option == "5" ]; then
    echo "test5"
else
    sleep 0
fi
if [ $option == "6" ]; then
    echo "test6"
else
    sleep 0
fi
echo done!