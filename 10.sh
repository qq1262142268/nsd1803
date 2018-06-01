#!/bin/bash
suzi(){
if echo $1 | egrep "\b[0-9]{1,}\b" &> /dev/null && [ $? -eq 0 ]
then
break
else
echo 请输入正整数
continue
fi
}
while read -p "请输入第一个数字" n1
do
suzi $n1
done
while read -p "请输入第二个数字" n2
do
suzi $n2
done
while read -p "请输入第三个数字" n3
do
suzi $n3
done
tmp=0
[ $n1 -gt $n2 ] && tmp=$n1 n1=$n2 n2=$tmp
[ $n1 -gt $n3 ] && tmp=$n1 n1=$n3 n3=$tmp
[ $n2 -gt $n3 ] && tmp=$n2 n2=$n3 n3=$tmp
echo 排序后为$n1 $n2 $n3
