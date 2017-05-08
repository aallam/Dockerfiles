### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* Oracle Java _8_ : JDK & JRE.
* Jenkins `2.46.2`

### Run
`docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -p 8080:8080 -p 50000:50000 aallam/jenkins-docker

### Credit
Based on [official][2] repository. More documentation available there. 
(Only difference, this image is using Oracle JDK instead of OpenJDK).

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/_/jenkins/
