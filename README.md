#Debian-tomcat-mysql

### Running

Simple:

```shell
docker run -d --name="tomcat-mysql-run" -e MYSQL_PASSWORD=password aallam/tomcat-mysql
```

Exposed:

```shell
docker run -d --name="tomcat-mysql-run" -e MYSQL_PASSWORD=root -p 3306:3306 -p 8080:8080 aallam/tomcat-mysql
```
