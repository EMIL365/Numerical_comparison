#!/bin/bash



#step1 read the date from file
date=`date`
master_count=`wc --lines < data.txt`
th_value=5

echo "$date | INFO | Got master count as $master_count"
echo "$date | INFO | entering master loop"

#main loop

for (( i=1 ; i <= $master_count ; i++ ))
do
	num1=`sed ''$i' !d' data.txt`
	
	if (( $num1 >= $th_value ))
	then 
	       echo "$date | INFO | got num1 value as $num1%"
               echo "$date | INFO | our th_value is $th_value%"       
               #step3 if the value is greater than 5 write it in another file

		echo $num1 >> value.txt
	else
		echo "$num1 value is less than 5"

		echo "$date | INFO | num1 value $num1% is greater than th_value"
                echo "$date | INFO | hence written on the other file "value.txt""
	        echo "$date | INFO | num1 value $num1% is less than th_value"
                echo "$date | INFO | hence printed $num1 value is less 5"

		fi
done
