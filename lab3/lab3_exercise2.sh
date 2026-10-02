#!/bin/bash

# this is a comment

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
        exit 1
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
if [ "$ct" -gt "$1" ]; then
    echo "$timestamp - Maximum number of processes exceeded" >> process_log.txt
else
    echo "$timestamp - The maximum number of processes NOT exceeded" >> process_log.txt
fi
# we could put the counting code ito a special function
# lets call that function counter()


# now we call the counter function

# lets pass a parameter into counter function
# but the counter function doesn't yet use the value passed
# how can we get a function to use a parameter?

# here's another example


# lets look at a more complex example
# suppose we want to monitor the file system for 
# the %age of used space.

# this looks very complex
# note the use of 2 pipes (|) and three commands - this is a form of chaining
