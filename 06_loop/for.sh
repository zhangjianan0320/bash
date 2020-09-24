#!/bin/bash
echo "for((i=0;i<3;i++))"
for((i=0;i<3;i++))
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
echo "for i in $(seq 0 3)"
for i in $(seq 0 3)
do
	echo "i=$i"
done

echo "for i in {1..3}"
for i in {1..3}
do
	echo "i=$i"
done

for i in $*;
do
	echo $i is input chart\!;
done

echo "for i in `ls`"
for i in `ls`;
do
	echo $i;
done
