name=$1
count=$(echo $name|wc -c)
count=`expr $count - 1`
echo -e $name
dash=$(yes '-'|head -n $count)
echo $dash|tr -d ' '
