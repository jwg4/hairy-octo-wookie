#!/bin/bash

fortune | pbmtext -builtin fixed > fortune.pbm
convert fortune.pbm -resize 1920x1080 fortune.png
fim -a fortune.png -c 'display;sleep "7";q'
 