#########################################################################
# File Name: relational.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 14时35分05秒
#########################################################################
#!/bin/bash

#关系运算符只支持数字
# -eq 检测是否相等，相等返回true
# -ne 检测是否不相等，不相等返回true
# -gt 检测左边的数是否大于右边，如果是，返回true
# -lt 检测左边数据是否小于右边，如果是，返回true
# -ge 检测左边是否大于等于右边，如果是，返回true
# -le 检测左边是否小于等于右边，如果是，返回true
a=10
b=20

if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi
if [ $a -ne $b ]
then
  echo "$a -ne $b: a 不等于 b"
else
  echo "$a -ne $b : a 等于 b"
fi
if [ $a -gt $b ]
then
  echo "$a -gt $b: a 大于 b"
else
 echo "$a -gt $b: a 不大于 b"
fi
if [ $a -lt $b ]
then
 echo "$a -lt $b: a 小于 b"
else
 echo "$a -lt $b: a 不小于 b"
fi
if [ $a -ge $b ]
then
	echo "$a -ge $b: a 大于或等于 b"
else
	echo "$a -ge $b: a 小于 b"
fi
if [ $a -le $b ]
then
  echo "$a -le $b: a 小于或等于 b"
else
  echo "$a -le $b: a 大于 b"
fi
