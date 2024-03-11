#this is a sqlloader script do for improt all the (GJHJ_***) data from url
####### author xjx ########
#1.using wget download the zip from url:
#2.unzip and cyclic reading the extracted files in folder named 'yearmonth',such as: '202010'
#3.using sqlloader and import data into table:T_KBMX_GJHJ_*, and the log will be saved in extracted folder

#!/bin/bash
curtime=$(date -d "$(date +%Y%m)01 last month" +%Y%m)
wget http... -o $curtiem.log
GJHJZIP="GJHJ_${curtime}_320000_0_ALL_SYF.zip"
unzip ./"$GJHJZIP" -d ./"$curtime"
echo "===========$curtime" >> ./$curtime
echo "download zip: $GJHJZIP" >> ./$curtime
fun_dir(){
echo "month"$1
cd ./$1
touch $1.log
for i in $( ls )
do
	if [[ $i =~ "PC" ]];
		then
		echo "======PCDATA   $i" >> ./$1.log
		sed -i "3c Infile './$i'" ../GJHJ_PC.ctl;
		sed -i "4c Badfile './$i.bad'" ../GJHJ_PC.ctl;
		sqlldr C##SXGK/pwd@emall control=../GJHJ_PC.ctl log=$i.log
		rm -f $i
	elif [[ $i =~ "ZDF" ]];
		then
		echo "======ZDFDATA  $i" >> ./$1.log
		sed -i "3c Infile './$i'" ../GJHJ_ZDF.ctl
                sed -i "4c Badfile './$i.bad'" ../GJHJ_ZDF.ctl
                sqlldr C##SXGK/pwd@emall control=../GJHJ_ZDF.ctl log=$i.log
                rm -f $i		
	elif [[ $i =~ "YF" ]];
		then
		echo "======YFDATA  $i" >> ./$1.log
		sed -i "3c Infile './$i'" ../GJHJ_YF.ctl
		sed -i "4c Badfile './$i.bad'" ../GJHJ_YF.ctl
		sqlldr C##SXGK/pwd@emall control=../GJHJ_YF.ctl log=$i.log
		rm -f $i
	else
		echo "======unexpected not import data  $i" >> ./$1.log
	fi
done
}
fun_dir $curtime
