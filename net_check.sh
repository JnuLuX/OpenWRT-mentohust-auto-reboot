#!/bin/sh -
command=`ping -c 10 www.baidu.com | grep packets | awk '{print $7}'|awk -F '%' '{print $1}'`
if [ $command -gt 40 ]
then
    echo "${command}% packets lost, restart mentohust"
    mentohust -k && mentohust
fi
