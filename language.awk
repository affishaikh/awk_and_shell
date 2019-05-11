#! usr/bin/awk

BEGIN {
  FS="|"
  number_of_movies=0
}
($8~"Korean"){
  print $1 "|" $8 
  number_of_movies+=1
}
END {
  print number_of_movies
}
