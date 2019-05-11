file_name=$1
awk -F'|' 'BEGIN{largest_area=0; country=""} (largest_area<$4){largest_area=$4; country=$1} END{print country, largest_area}' $file_name
