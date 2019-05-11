file_name=$1
no_of_lines=$(wc -l $file_name|sed 's/^ *//'|cut -d' ' -f1)
length_of_longest_line=$(awk 'BEGIN{long=0} {if(length($0)>long) long=length($0)} END{print long}' $file_name)
length_of_longest_line=`expr $length_of_longest_line + 1`
top_bottom=`expr $length_of_longest_line + 1`
dashes=""
for((k=1; k<=top_bottom; k++))
do
  dashes=$dashes"-"
done
echo $dashes
for(( i=1; i<=no_of_lines; i++))
do
  line=$(head -n $i $file_name| tail -n 1| sed 's/^/|/')
  len=$(echo $line | wc -c)
  len=`expr $len - 1`
  no_of_spaces=`expr $length_of_longest_line - $len`
  for((j=1; j<=no_of_spaces; j++))
  do
    line=$(echo $line| sed 's/$/-/')
  done
  line=$(echo $line| sed "s/$/|/")
  echo $line|tr '-' ' '
done
echo $dashes
