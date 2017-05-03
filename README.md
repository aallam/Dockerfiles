### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* [Oracle Java][2]: JDK & JRE
  * [Java 8][6]
* [Wildfly][3]:
  * [8.5.14][4]

### Tags
* [8.5.14][5] : `8.5`, `latest`

### Run
* Simple:
`docker run -d aallam/tomcat`
* Exposed:
`docker run -d -p 8080:8080 aallam/tomcat`

### Access
* The server should be accessible from `http://localhost:8080`.
* Tomcat Web Application Manager: `http://localhost:8080/manager/html` (default username/password: tomcat/s3cret)

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/r/aallam/oracle-java/
[3]: http://tomcat.apache.org/
[4]: http://tomcat.apache.org/download-80.cgi
[5]: https://github.com/Aallam/Dockerfiles/tree/tomcat
[6]: https://github.com/Aallam/Dockerfiles/blob/master/oracle-java/java8/Dockerfile
