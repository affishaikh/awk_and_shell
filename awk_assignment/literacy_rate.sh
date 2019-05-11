file_name=$1
awk -F'|' 'BEGIN{no_of_countries=0} ($10 > 70){no_of_countries+=1} END{print no_of_countries}' $file_name
