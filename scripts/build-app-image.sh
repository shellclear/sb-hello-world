#!/usr/bin/env sh
./mvnw install
podman build --format docker -t java-hello-world:1.0 .
