long=0
awk '{if(length($0)>long) long=length($0)}' test
echo $long
