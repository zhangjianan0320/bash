#!/bin/bash
echo "for((i=0;i<8;i++))"
for((i=0;i<8;i++))
do
	echo "i = $i"
done

echo "for i in 2 4 6"
for i in 2 4 6
do
	echo "i=$i"
done

echo "arr=(10 20 40)"
arr=(10 20 40)
for i in ${arr[@]}
do
	echo "i=$i"
done
#seq 用于产生0-10几个连续的自然数
echo "for i in $(seq 0 10)"
for i in $(seq 0 10)
do
	echo "i=$i"
done
