# Base docker image

[![Image name](https://img.shields.io/badge/docker-hope/base--alpine-brightgreen.svg)](https://hub.docker.com/r/hope/base-alpine/)

Minimalistic base image to create other images. Based on latest stable **Alpine 3.6** release.
Contains **bash** shell as default.
  
## Versions

Current and previous versions of Alpine are maintained. When new version appears you have time to switch. 

  * `latest` – latest version of Alpine. Use this if you want always be up to date
  * `3` – Latest Alpine release of 3.x branch
  * `3.6` – Alpine 3.6 (current)
  * `3.5` – Alpine 3.5 (previous)

## Usage

Just run to get the bash prompt

    docker run -it --rm hope/base-alpine

Use latest version as base image for your own images

    FROM hope/base-alpine 

Or use specific version as base image

    FROM hope/base-alpine:3.6
    FROM hope/base-alpine:3

## Timezone

[Available timezones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)  
Set timezone in container with environment variable `TZ` in command line

    docker run -it --rm -e TZ=America/Chicago hope/base-alpine
    
Or in your Dockerfile

    ENV TZ=America/Chicago

## Packages

There are 2 Alpine package repositories included

**Current**

    apk add nodejs

**Edge**
    
    apk add nodejs@edge
