#!/usr/bin/env sh
rm -rf target
podman rm -f java-hello-world
podman rmi localhost/java-hello-world:1.0
podman rmi localhost/java-hello-world:1.0
