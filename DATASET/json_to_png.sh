#!/bin/bash
let i=1
path=./images        	# json文件路径，将sh文件放到json同目录下为 ./
cd ${path}
for file in *.json                # 依次查找json文件
do
    labelme_json_to_dataset ${file}	 #在当前目录下将json文件转换为图片，
    let i=i+1
done
