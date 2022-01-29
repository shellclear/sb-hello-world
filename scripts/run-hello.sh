#!/usr/bin/env sh
podman run --name java-hello-world -u1234 -p 8088:8080 -d -ti quay.io/shellclear/java-hello-world:1.0
