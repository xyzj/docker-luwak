#!/bin/sh

usermod -u 99999 xyzj
groupmod -g 99999 xyzj

cd /opt/bin

rm -f /opt/bin/extsvrd.sock

runuser -u xyzj -g xyzj /opt/bin/luwakctld start

su - xyzj
#/bin/bash
