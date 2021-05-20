#!/bin/bash -e

# ssh tunnel through gateway bastion
ssh -A -i ~/id_rsa -vvvNJ user@public-IP -L <host_port>:localhost:<private_instance_destination_port> private_user@private-IP
