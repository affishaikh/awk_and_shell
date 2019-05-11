file_name=$1
line=$(head -n 1 $file_name)
sed -i bkp 's/^/|/g' $file_name
