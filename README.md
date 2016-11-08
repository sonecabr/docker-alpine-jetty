## Docker image to run jetty on alpine

[![Build Status](https://travis-ci.org/sonecabr/docker-alpine-jetty.svg?branch=master)](https://travis-ci.org/sonecabr/docker-alpine-jetty)

[![](https://badge.imagelayers.io/sonecabr/alpine-jetty:latest.svg)](https://imagelayers.io/?images=sonecabr/alpine-jetty:latest)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications.
This image is based on [AlpineLinux](http://alpinelinux.org/) to keep the size dow, yet smaller images do exist.  
Includes BASH, since many Java applications like to have convoluted BASH start-up scripts.

### Versions/tags
All tags upgraded to `alpine:3.4`

#### MAJOR TAGGING UPDATE
To allow selection of specific Java version, a **major retagging is taking place**.
Old tags will remain for compatibility sake, but are no longer documented.

#### JCE Policy
Special `_unlimited` images are available with Unlimited JCE Policy

**Latest JRE8/JDK8 Version**: `8u111`

### Tags

Latest Oracle Java 8 Server-JRE:
* `latest`
* `8`

Latest Oracle Java 8 JDK (plus DCEVM variant)
* `8_jdk`
* `8_jdk_unlimited`


### Usage

Example:

    docker run -p 8080:8080 -it --rm sonecabr/alpine-jetty
