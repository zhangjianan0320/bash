#########################################################################
# File Name: calc.sh
# Author: zjn
# mail: zjn
# Created Time: 2020年09月03日 星期四 16时22分07秒
#########################################################################
#!/bin/bash

read -p "please input a num: " NUM
read -p "please input a operate: " OPERATE
read -p "please input second num: " NUM1
bc<<EOF
$NUM $OPERATE $NUM1
EOF
