#! usr/bin/awk

BEGIN {
  lines=0
  FS="|"}
($2 > 2015) { 
  print $1, $2
  lines+=1}
END {
  print lines}
