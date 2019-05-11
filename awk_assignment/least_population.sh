file_name=$1
awk -F'|' 'BEGIN{least_population=0; country=""} (NR==1 || least_population>$3){least_population=$3; country=$1} END{print country, least_population}' $file_name
