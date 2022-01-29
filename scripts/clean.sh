#!/usr/bin/env sh
podman rm -f java-hello-world
podman rmi localhost/java-hello-world:1.0
podman rmi quay.io/shellclear/java-hello-world:1.0
