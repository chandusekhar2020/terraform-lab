#!/bin/bash
filename=myfile1.txt
LINES=$(cat $filename)

for LINE in $LINES
do
grep -in $LINE myfile2.txt (n : line number , i : capital and small case : not required if its numerical values)
if [ $? = 0 ]
then
echo "$LINE" >> final_match.txt
else
echo "value not found"
fi
done