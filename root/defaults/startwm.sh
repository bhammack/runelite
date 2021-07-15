#!/bin/bash
java -jar /usr/local/bin/RuneLite.jar
/usr/bin/pulseaudio --start
/usr/bin/i3 > /dev/null 2>&1
