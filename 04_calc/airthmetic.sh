#########################################################################
# File Name: calc.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 14时06分46秒
#########################################################################
#!/bin/bash
#算数运算 关系运算  布尔运算 字符串运算  文件测试运算符

#expr 是一个表达式计算工具，使用它可以完成表达式的求值操作
a=10
b=20

echo "a + b = `expr $a + $b`"
echo "a - b = `expr $a - $b`"
echo "a * b = `expr $a \* $b`"
echo "a / b = `expr $a / $b`"
echo "a % b = `expr $a % $b`"

if [ $a == $b ]
then
	echo "a 等于 b"
fi
if [ $a != $b ]
then
	echo "a 不等于 b"
fi
