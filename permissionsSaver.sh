# Horace Yip 10184901
#!/bin/bash

FILENAME=savedPermissions

if [[ -e $FILENAME ]] 
then
i=1
while [[ -e $FILENAME$i ]] 
do
let i++
done

FILENAME=$FILENAME$i
fi

ls -C1 | sed '1 d' | awk '{print $1 " " $9}' > $FILENAME
echo $FILENAME created!
