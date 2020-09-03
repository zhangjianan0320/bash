#########################################################################
# File Name: echo.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 16时35分54秒
#########################################################################
#!/bin/bash
#  echo -e 表示开启转义，\c 表示不换行  \n表示换行
#read 读取一行数据到指定变量中
read name
echo "your name is $name!"
echo "your name is $name" > myfile
#打印当前时间
echo `date`
