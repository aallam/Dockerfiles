### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* [Oracle Java][2]: JDK & JRE
  * `Java 8`
* Wildfly:
  * `10.1.0`
  * `9.0.2`
  * `8.2.1`

### Tags
* 10.1.0 : `10`, `10.1.0`, `latest`
* 9.0.2 : `9`, `9.0.2`
* 8.2.1 : `8`, `8.2.1`

### Run
* Default command: `docker run -it -p 8080:8080 aallam\wildfly`.
* Deployment to JBoss container using docker volumes:
  * Create a folder that will be mounted as volume in the JBoss docker container: `mkdir ~/deployements`. 
  * Run JBoss docker container: `docker run -it -p 8080:8080 -v ~/deployments:/opt/jboss/jboss-as/standalone/deployments/:rw aallam/wildfly`
* Deployment to JBoss container using Management API:
  * `docker run -it -p 8080:8080 -p 9990:9990 aallam/wildfly /bin/bash -c "/opt/jboss/wildfly-10/bin/add-user.sh --silent=true admin Admin#70365; /opt/jboss/wildfly-10/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0"`

### Access
* The server should be accessible from `http://localhost:8080`. 
* If the Management API is enabled the admin console should be accessible from `http://localhost:9990`.

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/r/aallam/oracle-java/
