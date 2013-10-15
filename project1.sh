#!/bin/bash

model=$(ssh $1 "cat /proc/cpuinfo | grep 'model name' | sed '1!d'")
kernel=$(ssh $1 "cat /proc/version")
echo "CPU $model"
echo "Kernel Version: $kernel"
