#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () { 
  echo "$1" >&2 
  rm -f $tmp-* 
 exit 1 
 } 
######### 
# TEST4 # 
#########  
echo "GCD of 696 , 60012 is 12" > $tmp-ans
./kaddai3.sh 696 60012 > $tmp-out || ERROR_EXIT "script err, kaddai3.sh" 
diff $tmp-ans $tmp-out || ERROR_EXIT "The answer is not correct" 

echo OK
rm -f $tmp-* 
exit 0 

