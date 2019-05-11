file_name=$1
awk -F'|' 'BEGIN{no_of_countries=0} ($9>20000 && $10 < 90){no_of_countries+=1} END{print no_of_countries}' $file_name
