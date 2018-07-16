#!/bin/bash
#自动根据后缀名解压文件
###echo "$1"
if [ ! -n "$1" ]  #若输入为空则提示用法和功能
then
	echo "usage: 2.self_compression.sh [--list] or [Source compressed file] [Destination path]"
	echo "Self compression according to the file name suffix"
elif [ $1 == "[--list]" ]  #判断第一个输入参数，若是则输出支持解压文件类型
then
	echo "Supported file types: zip tar tar.gz tar.bz2"
else                       
	fpath=$1 #第一个输入参数为源压缩文件路径
	filename=${fpath##*/} #获取源压缩文件文件名
	###echo $filename
	to_file=$2  #第二个输入参数为解压路径
	ext="${filename#*.}"  #获取文件名的后缀
	###echo "$ext"
	case $ext in
	'zip')                          #zip类型的压缩文件
			eval "unzip $filename" 
			;;
	'tar')                          #tar类型的压缩文件
			eval "tar xvf $filename"  
			;;
	'tar.gz')                       #tar.gz类型的压缩文件
			eval "tar zxvf $filename"
			;;
	'tar.bz2')                      #tar.bz2类型的压缩文件
			eval "tar jxvf $filename"
			;;
	*)                              #其他类型均不支持
			echo "This type is not supported"
			;;
	esac
fi
