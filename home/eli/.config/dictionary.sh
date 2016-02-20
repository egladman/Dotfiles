sdcv $1 | grep 1 | grep -v -m 1 ^[A-Za-z] | sed 's/  1  //g' | sed s'/.$//'
