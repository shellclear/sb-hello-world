#!/usr/bin/env sh
skopeo copy docker://registry.access.redhat.com/ubi8/openjdk-11:1.11-2 docker://quay.io/shellclear/openjdk:1.11-2 --insecure-policy
skopeo copy containers-storage:localhost/java-hello-world:1.0 docker://quay.io/shellclear/java-hello-world:1.0
skopeo copy containers-storage:localhost/java-hello-world:1.0 docker://quay.io/shellclear/java-hello-world:latest