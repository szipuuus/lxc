#!/bin/bash
lxc init ubuntu:16.04 jancsi
lxc start jancsi
sleep 15
lxc list
lxc exec jancsi -- apt update --yes
lxc exec jancsi -- apt upgrade --yes
lxc exec jancsi -- apt install mc --yes
