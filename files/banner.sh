#!/bin/bash

#################### GÜNLER ####################

pazartesi=$(date |grep -o Mon)
sali=$(date |grep -o Tue)
carsamba=$(date |grep -o Wed)
persembe=$(date |grep -o Thu)
cuma=$(date |grep -o Fri)
cumartesi=$(date |grep -o Sat)
pazar=$(date |grep -o Sun)

#################### GÜNLERE GÖRE RENKLER ####################

if [[ $pazartesi == Mon ]];then
	color='\e[32m'
elif [[ $sali == Tue ]];then
	color='\e[33m'
elif [[ $carsamba == Wed ]];then
	color='\e[34m'
elif [[ $persembe == Thu ]];then
	color='\e[31m'
elif [[ $cuma == Fri ]];then
	color='\e[36m'
elif [[ $cumartesi == Sat ]];then
	color='\e[32m'
elif [[ $pazar == Sun ]];then
	color='\e[33m'
fi

#################### BANNER ####################

printf "
\e[97m


 
          　 　 ▀▀█▀▀ ▒█▀▀▀ ▒█▀▀█ ▒█▀▄▀█ ▒█░▒█ ▀▄▒▄▀ 
          　 　 ░▒█░░ ▒█▀▀▀ ▒█▄▄▀ ▒█▒█▒█ ▒█░▒█ ░▒█░░ 
          　 　 ░▒█░░ ▒█▄▄▄ ▒█░▒█ ▒█░░▒█ ░▀▄▄▀ ▄▀▒▀▄ 
$color
 
  　 　 　 ▒█░░▒█ ▒█▀▀▀█ ▒█▀▀█ ▒█▀▀▄ ▒█░░░ ▀█▀ ▒█▀▀▀█ ▀▀█▀▀ 
　   　 　 ▒█▒█▒█ ▒█░░▒█ ▒█▄▄▀ ▒█░▒█ ▒█░░░ ▒█░ ░▀▀▀▄▄ ░▒█░░ 
　   　 　 ▒█▄▀▄█ ▒█▄▄▄█ ▒█░▒█ ▒█▄▄▀ ▒█▄▄█ ▄█▄ ▒█▄▄▄█ ░▒█░░ 

                《 You are learning what I forgot.. 》
                         
         \e[1;90m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                $color ~ KİŞİYE ÖZEL WORDLİST OLUŞTURMA ~
         \e[90m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 \e[90m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	           $color [ CODED BY CANPOLAT GÖKKAYA ] 
  	 \e[0;92m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
  	            $color İnstagram: canpolatgkky
	     \e[0;92m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	              $color Telegram: @androedit
	         \e[0;92m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
		     +-+-+-+-+-+-+-+-+-+-+-+
		         +-+-+-+-+-+-+-+
			     +-+-+-+
			       +-+
			        +

"
