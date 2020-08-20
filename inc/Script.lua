#!/bin/bash 
       ___           ___           ___           ___     
#     /\__\         /\__\         /\  \         /\  \    
#    /:/  /        /::|  |       /::\  \       /::\  \   
#   /:/__/        /:|:|  |      /:/\:\  \     /:/\:\  \  
#  /::\  \ ___   /:/|:|__|__   /:/  \:\  \   /:/  \:\__\ 
# /:/\:\  /\__\ /:/ |::::\__\ /:/__/ \:\__\ /:/__/ \:|__|
# \/__\:\/:/  / \/__/~~/:/  / \:\  \ /:/  / \:\  \ /:/  /
#      \::/  /        /:/  /   \:\  /:/  /   \:\  /:/  / 
#      /:/  /        /:/  /     \:\/:/  /     \:\/:/  /  
#     /:/  /        /:/  /       \::/  /       \::/__/   
#     \/__/         \/__/         \/__/         ~~       
#---------------------------------------------------------------------
cd $(cd $(dirname $0); pwd)
 
RED='\033[0;31m'
SMAY='\033[0;36m' 
GREEN='\033[0;32m'
Yellow='\033[0;33m'
LSAMAY='\033[01;49m'
WHITB='\033[01;90m'
WHITEC='\033[01;91m'
CNIL='\033[0m'
Version=`lsb_release -rs | cut -f1 -d"."`

if [ "$Version" == "18" ];then
echo -e "${GREEN}
      ___           ___           ___           ___     
     /\__\         /\__\         /\  \         /\  \    
    /:/  /        /::|  |       /::\  \       /::\  \   
   /:/__/        /:|:|  |      /:/\:\  \     /:/\:\  \  
  /::\  \ ___   /:/|:|__|__   /:/  \:\  \   /:/  \:\__\ 
 /:/\:\  /\__\ /:/ |::::\__\ /:/__/ \:\__\ /:/__/ \:|__|
 \/__\:\/:/  / \/__/~~/:/  / \:\  \ /:/  / \:\  \ /:/  /
      \::/  /        /:/  /   \:\  /:/  /   \:\  /:/  / 
      /:/  /        /:/  /     \:\/:/  /     \:\/:/  /  
     /:/  /        /:/  /       \::/  /       \::/__/   
     \/__/         \/__/         \/__/         ~~       
----------------------------------------------------------------------${CNIL}"
echo -e "${RED}| للاسف لايمكنك تنصيب السورس ع نظام اوبنتو {${Version}} يجب ان يكون على اصدار  اقل مثلا  ${SMAY}14 او 16
${CNIL}";
echo -e "${RED}| Sorry Canot install Source on Ubuntu {${Version}} Please install system To Ubuntu ${SMAY}14 or 16 ${RED} For Run The Source Th3max 
${CNIL}";
exit;
fi


if [ ! -f "./TG" ]; then
echo -e "${RED}
¦
¦ CAUTION:${WHITB} Your Not Dwonload TG .
¦ NOW I Run File ${Yellow}./run${WHITB} To install ${SMAY}Source TH3max${CNIL} . \n
\n\n"
chmod +x ./ins
./ins
exit;
fi

if [ ! -f "./inc/Token.txt" ]; then
echo -e "${RED}
¦
¦ CAUTION:${WHITB} Your Token Bot Not Found .
¦ NOW I Run File ${SMAY}./RUN.lua${WHITB} To Enter Data For You Bot${CNIL}. \n
\n\n"
lua ./inc/Run.lua
exit;
fi


TOKEN=`cat ./inc/Token.txt`
sudo chmod +x ./TG

if [ "$1" == "R" ] ; then
while(true) do
sudo killall -q ./TG
sudo rm -fr ../.telegram-cli
./TG -s ./inc/Run.lua --bot=$TOKEN
done
else

if ! screen -list | grep -q "FHAIWIH"; then
screen -S FHAIWIH ./run R
fi
screen -X -S FHAIWIH kill
screen -S FHAIWIH ./run R
fi

