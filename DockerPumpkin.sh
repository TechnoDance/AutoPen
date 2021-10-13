#!/bin/sh
cd wifipumpkin3
sudo docker build -t “wifipumpkin3”
xterm -hold -e "sudo docker run –privileged -ti –rm –name wifipumpkin3 –net host “wifipumpkin3”"

#etc.