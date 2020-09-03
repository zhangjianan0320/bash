#########################################################################
# File Name: string.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年08月26日 星期三 18时03分51秒
#########################################################################
#!/bin/bash

#单引号 
#单引号内的任何字符串都会原样输出，单引号字符串中的变量是无效的
#单引号字符串中不能出现单独的一个单引号，使用转义符后也不行
str='this is a string'
#双引号
#双引号内可以使用变量
#双引号内可以使用转移符
your_name="zhangjianan"
str="Hello, I know you are \"${your_name}!\"\n"
echo -e $str

#字符串拼接
greet="hello,"${your_name}" !"
greet_1="hello,${your_name} !"
echo ${greet} ${greet_1}

#获取字符串长度
echo 获取字符串长度测试
str_len="hello zhangjianan"
echo $str_len
echo ${#str_len}

echo 提取子字符串
#提取的时候，第一个字符串是0
echo ${str_len:6:17}

echo 查找子字符串
echo `expr index "$str_len" e`

#数组操作
echo 数组操作
array1=(value0 value1 value2 value3)
array2[0]=value0
array2[1]=value1
array2[2]=value2
echo array1[0] = ${array1[0]}
echo array2[0] = ${array2[0]}
#显示所有成员 @ 符号表示获取数组中的所有元素
echo ${array1[@]}
echo ${array2[@]}

arr_len=${#array1[@]}
echo array1 length is $arr_len
echo array1 length is ${#array1[@]}


#多行注释
:<<EOF
echo 123
echo 123
echo 123
echo 123
EOF

#shell脚本中，通常将EOF与<<结合使用，表示后续输入作为子命令或shell的输入，知道遇到EOF为止，再返回到主shell
#EOF只是一个分界符，当然也可以使用abcd替换
#当shell遇到<<时，他知道下一个次是一个分界符，在该分解符以后的内容都被当做输入，知道shell右看到该分解符（位于单独的一行）
#此分解符可以是所定义的任何字符串，其实不一定要用EOF，只要是“内容段”中没有出现过的字符串，都可以用来替代EOF，完全可以替换成abcd之类的字符串，只是一个起始和结束的标识符而已
#  :<<EOF  其中:是shell中的空语句
