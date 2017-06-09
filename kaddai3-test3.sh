#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () { 
  echo "$1" >&2 
  rm -f $tmp-* 
 exit 1 
 } 
######### 
# TEST3 # 
#########  
echo "GCD of 565 , 6950 is 5" > $tmp-ans
./kaddai3.sh 565 6950 > $tmp-out || ERROR_EXIT "script err, kaddai3" 
diff $tmp-ans $tmp-out || ERROR_EXIT "The answer is not correct" 

echo OK
rm -f $tmp-* 
exit 0 

