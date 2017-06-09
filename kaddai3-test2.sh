#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () { 
  echo "$1" >&2 
  rm -f $tmp-* 
 exit 1 
 } 
######### 
# TEST2 # 
#########  
echo "GCD of 45 , 652 is 1" > $tmp-ans
./kaddai3.sh 45 652 > $tmp-out || ERROR_EXIT "script err, kaddai3.sh" 
diff $tmp-ans $tmp-out || ERROR_EXIT "The answer is not correct" 

echo OK
rm -f $tmp-* 
exit 0 

