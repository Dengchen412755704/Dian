#!/bin/bash
#获取文件夹下最大的前n个文件
#echo $2 $4
if [ ! -n "$1" ]  #如果没有输入参数则输出使用用法和函数功能
then
	echo usage: 3.file_size.sh [-n N] [-d DIR]
	echo Show top N Largest files/directories
elif [ ! -n "$4" ]  #如果输入第4个参数为空则默认路径
then
	du -ah |sort -rh | head -$2
else              #按格式输入输出前n个最大文件
	echo The largest files/directions in "$4" are:
	du -ah $4 | sort -rh | head -$2
fi
