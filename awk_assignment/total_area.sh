file_name=$1
awk -F'|' 'BEGIN{total_area=0} {total_area+=$4} END{print total_area}' $file_name
