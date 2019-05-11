file_name=$1
awk -F'|' 'BEGIN{highest_population=0; country=""} (highest_population<$3){highest_population=$3; country=$1} END{print country, highest_population}' $file_name
