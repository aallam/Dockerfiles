### OS
* This image uses [Debian][1] 8 _(jessie)_.

### Content
* Oracle Java _8_ : JDK & JRE.
* Maven `3.5`

### Run

## Create Dockerfile
* Create a Dockerfile (next to pom.xml) with:
`FROM aallam/maven:onbuild
CMD ["do-something-with-built-packages"]`
* Build the image:
`docker build -t my-maven .`
* Run an instance of the image:
`docker run -it --name my-maven-script my-maven`

## Single command
`docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven aallam/maven mvn clean install`

### Credit
Based on [official] maven repository. 
(Only difference, this image is using Oracle JDK instead of OpenJDK).

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/_/maven/
