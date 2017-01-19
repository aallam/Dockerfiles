### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* [Oracle Java][2]: JDK & JRE
  * `Java 7`
* JBoss
  * `7.1.1`

### Tags
* JBoss 7.1.1 : `7`, `7.1.1`, `latest`

### Run
* Default command: `docker run -it -p 8080:8080 aallam\jboss-as`.
* Deployment to JBoss container using docker volumes:
  * Create a folder that will be mounted as volume in the JBoss docker container: `mkdir ~/deployements`. 
  * Run JBoss docker container: `docker run -it -p 8080:8080 -v ~/deployments:/opt/jboss/jboss-as/standalone/deployments/:rw aallam\jboss-as`
* Deployment to JBoss container using Management API:
  * `docker run -it -p 8080:8080 -p 9990:9990 aallam/jboss-as /bin/bash -c "/opt/jboss/jboss-as/bin/add-user.sh --silent=true admin Admin#70365; /opt/jboss/jboss-as/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0"`

### Access
* The server should be accessible from `http://localhost:8080`. 
* If the Management API is enabled the admin console should be accessible from `http://localhost:9990`.

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/r/aallam/jboss-as/
