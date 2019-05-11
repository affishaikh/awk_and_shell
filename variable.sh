line="hello"
awk -F"|" -v var=$line '(NR==40){print var=$0}' movies.csv
echo $line 
