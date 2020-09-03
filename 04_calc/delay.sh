#########################################################################
# File Name: delay.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 15时23分10秒
#########################################################################
#!/bin/bash
# -ne表示不等于 ，-eq表示等于
if [ $# -ne 2 ]
then
	echo "请按照如下格式输入 1分20秒 $0 1 20"
	exit 0
fi

PRINT_MESSAGE()
{
	echo -n "$min:$sec"
	sleep 1
	echo -ne "\r      \r"
}
sec=$2
min=$1
if [ $sec -ge 60 ]
then
	echo "秒数必须小于60，请重新输入"
	exit 0
fi
for((;sec>=0;sec--))
do
	if [ $sec -eq 0 ]
	then
		if [ $min -eq 0 ]
		then
			exit 0
		else
			PRINT_MESSAGE
			((min--))
			sec=59
		fi
	fi
	PRINT_MESSAGE
done
