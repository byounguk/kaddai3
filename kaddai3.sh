#!/bin/bash


n1=$1
n2=$2

rem=1

a1=$n1
a2=$n2

while [ $rem -ne 0 ]
do
rem=`expr $n1 % $n2`

n1=$n2
n2=$rem
done
echo "GCD of $a1 , $a2 is $n1"

