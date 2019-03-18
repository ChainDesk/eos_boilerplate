#!/bin/bash
figlet "DockerService"
echo "docker's name: \t $2"
echo "docker's status: \t $1"


if [ "$1" == "stop" ]
then
    echo "== stop docker container and rm the data dir."
    docker stop "$2" || true && docker rm --force "$2" || true
else
    docker/start_eosio_docker.sh "$2" "$3"
fi



