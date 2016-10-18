# Horace Yip 10184901
#!/bin/bash

ip=$(ifconfig | awk '/inet addr:/{print substr($2,6)}')
addr=$(echo $ip | awk '{print $1;}')

if [[ $addr == 127* ]]; then
echo $addr' Local IP';
elif [[ $addr == 10* || $addr == 192.168* ]]; then
echo $addr' Private IP';
else
echo $addr' Public IP';
fi
addr2=$(echo $ip | awk '{print $2;}')

if [[ $addr2 == 127* ]]; then
echo $addr2' Local IP';
elif [[ $addr2 == 10* || $addr2 == 192.168* ]]; then
echo $addr2' Private IP';
else
echo $addr2' Public IP';
fi
