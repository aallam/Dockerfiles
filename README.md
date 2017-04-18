#Debian-mysql

### Running

Simple:

```shell
docker run -d --name="mysql-run" -e MYSQL_PASSWORD=password aallam/mysql
```

Exposed:

```shell
docker run -d --name="mysql-run" -e MYSQL_PASSWORD=password -p 3306:3306 aallam/mysql
