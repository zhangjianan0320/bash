#########################################################################
# File Name: hello.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年08月26日 星期三 16时42分54秒
#########################################################################
#!/bin/bash

#显示hello world
echo "hello world"
#定义变量 中间不能有空格 不能使用标点符号 不能使用关键字 不能数字开头
your_name="zhangjianan"
#使用变量 使用一个定义过的变量，在变量名前添加 $ 符号即可
echo $your_name
#{}可以不加，但是建议加上，养成好习惯，避免一些意外情况
echo ${your_name}
#定义的变量可以重新进行赋值
your_name="zhang_jianan"
echo ${your_name}

#只读变量 使用readonly命令可以将变量定义为只读变量，只读变量的值不能被改变
myName="zhangjianan"
readonly myName
#对只读变量赋值的时候会报错
#myName="zhang_jianan"
#删除变量 删除后变量不可用，只读变量不能被删除
unset your_name
echo ${your_name}
#局部变量 在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量
#环境变量 所有程序，包含shell启动的程序，都能王文环境变量，有些程序需要环境变量来保证其正常运行，必要的时候shell脚本也可以定义环境变量
#shell变量 shell变量是由shell程序设置的特殊变量，shell变量中有一部分是环境变量，一部分是局部变量，这些变量保证了shell的正常运行
