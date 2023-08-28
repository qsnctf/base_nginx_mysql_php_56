# 说明
## 环境
Linux环境：alpine\
Web服务：Nginx\
数据库服务：MySQL\
Web应用：PHP 5.6

## 如何使用
1. Git Clone 本仓库
2. 在`www`目录中放入自己的Web题目代码。
3. 检查`Dockerfile`是否需要额外配置，如修改权限、修改php.ini等。
4. 检查`files`中的`nginx.conf`是否符合题目要求，如目录定义、协议定义等。
5. 检查是否需要修改`flag.sh`，比如需要在题目中替换某个文本为FLAG？**（默认是将FLAG写入/flag）**
6. 构建项目
7. 测试

## 如何构建

### 使用Docker Build
```bash
docker build -t name/challenges_name:version_tag .
```

### 使用Docker Compose
**需要编写好`docker-compose.yml`**
```bash
docker-compose build
```

### MySql链接说明
- 地址：127.0.0.1 （用localhost实测会出现一些问题）
- 用户名：root
- 密码：root
- 导入文件：www/db.sql
- 注意：db.sql需要包含创建数据库的语句
- FLAG更新：参考files/flag.sh中如下的内容：
```bash
mysql -e "USE qsnctf;UPDATE user SET password='$FLAG' where username='user'" -uroot -proot
```
qsnctf指的是数据库、user指的是数据表、password指的是更新的字段、where子句后面跟的是条件语句。