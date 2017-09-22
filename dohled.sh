#!/bin/bash
cas=`date +%T`
ip=`ifconfig eth1 | grep "inet adr"|awk -F ":" '{print $2}'|awk -F " " '{print $1}'`
prijato=`ifconfig eth1 | grep "bajt"|awk -F "(" '{print $2}'|awk -F ")" '{print $1}'`
odeslano=`ifconfig eth1 | grep "bajt"|awk -F "(" '{print $3}'|awk -F ")" '{print $1}'`
ram=`free -h | grep "Mem:"|awk -F " " '{print $2}'|awk -F " " '{print $3}'`
hdd=
echo "Cas: "$cas" IP: "$ip" Prijato: "$prijato" Odeslano: "$odeslano" RAM: "$ram  >> log
