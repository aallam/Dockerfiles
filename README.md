### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* [Oracle Java][2]: JDK & JRE
  * [Java 8][6]
* Wildfly:
  * `10.1.0`
  * `9.0.2`
  * `8.2.1`

### Tags
* [10.1.0][3] : `10`, `10.1.0`, `latest`
* [9.0.2][4] : `9`, `9.0.2`
* [8.2.1][5] : `8`, `8.2.1`

### Run
* Default command: 
`docker run -it -p 8080:8080 aallam\wildfly`.
* Deployment to JBoss container using docker volumes:
  * Create a folder that will be mounted as volume in the JBoss docker container: 
  `mkdir ~/deployements`. 
  * Run JBoss docker container: 
  `docker run -it -p 8080:8080 -v ~/deployments:/opt/jboss/wildfly-10/standalone/deployments/:rw aallam/wildfly`
* Deployment to JBoss container using Management API:
  * `docker run -it -p 8080:8080 -p 9990:9990 aallam/wildfly /bin/bash -c "/opt/jboss/wildfly-10/bin/add-user.sh --silent=true <username> <password>; /opt/jboss/wildfly-10/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0"`

### Access
* The server should be accessible from `http://localhost:8080`. 
* If the Management API is enabled the admin console should be accessible from `http://localhost:9990`.

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/r/aallam/oracle-java/
[3]: https://github.com/Aallam/Dockerfiles/blob/master/wildfly/10.1.0/Dockerfile
[4]: https://github.com/Aallam/Dockerfiles/blob/master/wildfly/9.0.2/Dockerfile
[5]: https://github.com/Aallam/Dockerfiles/blob/master/wildfly/8.2.1/Dockerfile
[6]: https://github.com/Aallam/Dockerfiles/blob/master/oracle-java/java8/Dockerfile
