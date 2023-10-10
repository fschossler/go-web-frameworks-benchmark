#!/bin/sh

FRAMEWORK=$1
DOCKER_COMPOSE=docker-compose-$FRAMEWORK.yml

if [ "$FRAMEWORK" = "--help" ]; then
    echo "Just put the name of the framework that you want to test. Available names: echo, fiber, gin, gorillamux, nethttp."
fi
if [ "$FRAMEWORK" = "echo" ]; then
    cd docker-composes && docker-compose -f "$DOCKER_COMPOSE" up --build --force-recreate -V 
fi
if [ "$FRAMEWORK" = "fiber" ]; then
    cd docker-composes && docker-compose -f "$DOCKER_COMPOSE" up --build --force-recreate -V
fi
if [ "$FRAMEWORK" = "gin" ]; then
    cd docker-composes && docker-compose -f "$DOCKER_COMPOSE" up --build --force-recreate -V
fi
if [ "$FRAMEWORK" = "gorilla-mux" ]; then
    cd docker-composes && docker-compose -f "$DOCKER_COMPOSE" up --build --force-recreate -V
fi
if [ "$FRAMEWORK" = "net-http" ]; then
    cd docker-composes && docker-compose -f "$DOCKER_COMPOSE" up --build --force-recreate -V
fi