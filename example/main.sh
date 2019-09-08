#!/bin/bash

max_value=0
studet=0
values=()

while read students
do
	((values[students]+=1))
done
for i in ${!values[@]}
do
        if [ $max_value -lt ${values[i]} ]
	then
		max_value=${values[i]}
		student=$i
	fi
done

echo $student
