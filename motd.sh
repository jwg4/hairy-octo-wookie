#!/bin/bash

( hostname | figlet; uname -n -r -o -m | /usr/games/cowsay ) > /etc/motd
