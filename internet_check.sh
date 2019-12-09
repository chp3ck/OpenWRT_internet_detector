#!bin/bash
PACKET_LOSS_1=`ping -c 10 1.1.1.1 | grep packets | awk -F '%' '{print $1}' | awk -F ', ' '{print $NF}'`
PACKET_LOSS_2=`ping -c 10 8.8.8.8 | grep packets | awk -F '%' '{print $1}' | awk -F ', ' '{print $NF}'`
PACKET_LOSS_3=`ping -c 10 77.88.8.8 | grep packets | awk -F '%' '{print $1}' | awk -F ', ' '{print $NF}'`
PACKET_LOSS_SUM=PACKET_LOSS_1+PACKET_LOSS_2+PACKET_LOSS_3
if [ $PACKET_LOSS_SUM -gt 21 ]
then
    echo "${PACKET_LOSS_SUM}% packets lost, restart device!!!"
    reboot
fi
