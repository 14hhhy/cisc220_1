# Horace Yip 10184901
#!/bin/bash

c1=0
c2=0
c3=0
track1="|->                                        # Lane 1 #"
track2="|->                                        # Lane 2 #"
track3="|->                                        # Lane 3 #"

clear
echo -e 'Welcome to CISC220 Racing Arena\nUser 1 press 1 to move forward, User 2 press 2 and User 3 press 3\n'
echo "$track1"
echo "$track2"
echo "$track3"

while (( $c1!=40 && $c2!=40 && $c3!=40 ))
do
read -n1 car
if [[ $car == 1 ]]; then
track1=${track1/"|"/"~"}
track1=${track1/"-"/"|"}
track1=${track1/">"/"-"}
track1=${track1/" "/">"}
c1=$(($c1+1));
elif [[ $car == 2 ]]; then
track2=${track2/"|"/"~"}
track2=${track2/"-"/"|"}
track2=${track2/">"/"-"}
track2=${track2/" "/">"}
c2=$(($c2+1));
elif [[ $car == 3 ]]; then
track3=${track3/"|"/"~"}
track3=${track3/"-"/"|"}
track3=${track3/">"/"-"}
track3=${track3/" "/">"}
c3=$(($c3+1));
fi
clear
echo -e 'Welcome to CISC220 Racing Arena\nUser 1 press 1 to move forward, User 2 press 2 and User 3 press 3\n'
echo "$track1"
echo "$track2"
echo "$track3"
done

if [[ $c1 = 40 ]]; then
echo Player 1 WINS;
elif [[ $c2 = 40 ]]; then
echo Player 2 WINS;
elif [[ $c3 = 40 ]]; then
echo Player 3 WINS;
fi
