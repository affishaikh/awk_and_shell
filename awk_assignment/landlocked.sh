file_name=$1
awk -F'|' '($6==0){print $1}' $file_name
