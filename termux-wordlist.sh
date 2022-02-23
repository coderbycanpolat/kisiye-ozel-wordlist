#!/bin/bash
clear
if [[ $1 == güncelle ]];then
	cd files
	#bash güncelleme.sh güncelle
	exit
fi
cd files
#bash güncelleme.sh
bash banner.sh
if [[ -a ../wordlist.txt ]];then
	echo
	echo
	echo
	printf "\e[33m[*] \e[0mKAYITLI WORDLİST.TXT BULUNDU"
	echo
	echo
	echo
	read -e -p $'KAYITLI WORDLİST.TXT SİLİNSİN Mİ \e[33m[\e[32m EVET\e[33m/\e[31mHAYIR\e[33m ] \e[31m>> \e[0m' sec
	echo
	echo
	echo
	if [[ $sec == e || $sec == E || $sec == evet || $sec == EVET ]];then
		rm ../wordlist.txt
		echo
		echo
		echo
		printf "\e[32m[*]\e[0m KAYITLI WORDLİST.TXT SİLİNDİ"
		echo
		echo
		echo
		sleep 1
		printf "\e[32m[*]\e[0m YENİ WORDLİST.TXT OLUŞTURULUYOR"
		echo
		echo
		echo
	elif [[ $sec == h || $sec == H || $sec == hayır || $sec == HAYIR ]];then
		echo
		echo
		echo
		printf "\e[31m[*]\e[0m KAYITLI WORDLİST.TXT SİLİNMEDİ"
		echo
		echo
		echo
		sleep 1
		printf "\e[31m[*]\e[0m ÇIKIŞ YAPILDI"
		echo
		echo
		echo
		exit
	else
		echo
		echo
		echo
		printf "\e[31m[!]\e[0m HATALI SEÇİM \e[31m!!!\e[0m"
		echo
		echo
		echo
		sleep 2
		bash termux-wordlist.sh
	fi
fi
read -e -p $'\e[0m AD \e[31m>>\e[92m ' ad
echo
printf "\e[32m[*]\e[0m $ad"
echo
echo
read -e -p $' SOYAD \e[31m>>\e[92m ' soyad
echo
printf "\e[32m[*]\e[0m $soyad"
echo
echo
read -e -p $' ŞEHİR \e[31m>> \e[92m' sehir
echo
printf "\e[32m[*]\e[0m $sehir"
echo
echo
read -e -p $' MEMLEKET \e[31m>> \e[92m' memleket
echo
printf "\e[32m[*]\e[0m $memleket"
echo
echo
read -e -p $' ŞEHİR PLAKA \e[31m>> \e[92m' splaka
echo
printf "\e[32m[*]\e[0m $splaka"
echo
echo
read -e -p $' MEMLEKET PLAKA \e[31m>> \e[92m' mplaka
echo
printf "\e[32m[*]\e[0m $mplaka"
echo
echo
read -e -p $' YIL \e[31m>> \e[92m' yil
echo
printf "\e[32m[*]\e[0m $yil"
echo
echo
read -e -p $' DOĞUM YIL \e[31m>> \e[92m' dogumyil
echo
printf "\e[32m[*]\e[0m $dogumyil"
echo
echo
read -e -p $' DOĞUM AY \e[31m>> \e[92m' dogumay
echo
printf "\e[32m[*]\e[0m $dogumay"
echo
echo
read -e -p $' DOĞUM GUN \e[31m>> \e[92m' dogumgun
echo
printf "\e[32m[*]\e[0m $dogumgun"
echo
echo
read -e -p $' TUTTUĞU TAKIM \e[31m>> \e[92m' takim
echo
printf "\e[32m[*]\e[0m $takim"
echo
echo
read -e -p $' KISALTILMIŞ TUTTUĞU TAKIM ADI\e[31m >> \e[92m' ktakim
echo
printf "\e[32m[*]\e[0m $ktakim"
echo
echo
read -e -p $' TAKIM YIL \e[31m>>\e[92m ' tyil
echo
printf "\e[32m[*]\e[0m $tyil"
echo
echo
printf "
ad=$ad
soyad=$soyad
sehir=$sehir
memleket=$memleket
splaka=$splaka
mplaka=$mplaka
yil=$yil
dogumyil=$dogumyil
dogumay=$dogumay
dogumgun=$dogumgun
takim=$takim
ktakim=$ktakim
tyil=$tyil
" > output.txt
bash ad.sh
bash soyad.sh
bash sehir.sh
bash memleket.sh
bash splaka.sh
bash mplaka.sh
bash yil.sh
bash dogumyil.sh
bash dogumay.sh
bash dogumgun.sh
bash takim.sh
bash ktakim.sh
bash tyil.sh
cd ..
cat wordlistt.txt |grep -o [A-Z.a-z.-sh.-ı-]\* > wordlist.txt
rm wordlistt.txt
printf "\e[32m
[✓] \e[33m$(cat wordlist.txt |wc -l) \e[0mADET ŞİFRELİ WORDLİST.TXT OLUŞTURULDU"
echo
echo
echo

