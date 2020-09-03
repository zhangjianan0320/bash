#########################################################################
# File Name: data.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 15时04分18秒
#########################################################################
#!/bin/bash
#(())用于整数运算  expr 用于整数运算  bc linux下的计算器，适用于小数及整数运算
echo "实现10s倒计时"
for ((NUM=10;NUM>=0;NUM--))
do
#echo -n 表示不换行输出  -e表示处理特殊字符 如\a \b删除前一个字符 \c最后不加上换行符号 \r 光标移至行首，但不换行
	echo -ne "\r  \r"
	echo -n "$NUM"
	sleep 1
done


