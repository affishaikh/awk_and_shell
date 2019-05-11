file_name=$1
awk -F'|' 'BEGIN{no_of_countries=0} (tolower($2) ~ "asia"){no_of_countries+=1} END{print no_of_countries}' $file_name
