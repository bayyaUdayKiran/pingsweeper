#! /bin/bash
if [ "$1" == "" ]
then
echo "Usage: ./pingScript.sh [network]"
echo "Example: ./pingScript.sh 192.192.25"
else
echo "Looking for Active Hosts: "
for x in `seq 1 254`; do
ping -c 1 "$1".$x | grep "64 bytes" | cut -d" " -f4 | cut -d":" -f1 >> activeHosts.txt
done
fi
echo "Active hosts data is stored in 'activeHosts.txt'"
