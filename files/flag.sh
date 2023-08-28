#!/bin/sh

# 说明： 如果需要将FLAG写到数据库，可以在下面去掉注释，并调整位置
mysql -e "USE qsnctf;UPDATE user SET password='$FLAG' where username='user'" -uroot -proot
# 其中，qsnctf是数据库名称，user是表名称，password、id均为字段。

echo $FLAG > /flag

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh

