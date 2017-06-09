#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () { 
  echo "$1" >&2 
  rm -f $tmp-* 
 exit 1 
 } 
######### 
# TEST1 # 
#########  
echo "GCD of 5 , 10 is 5" > $tmp-ans
./kaddai3.sh 5 10 > $tmp-out || ERROR_EXIT "script err, kaddai3.sh" 
diff $tmp-ans $tmp-out || ERROR_EXIT "The answer is not correct" 

echo OK
rm -f $tmp-* 
exit 0 

