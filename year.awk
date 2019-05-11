#! usr/bin/awk

BEGIN {
  FS="|"
  number_of_movies=0
}
($2 > 2000){
  print $1 "|" $2
  number_of_movies+=1
}
END {
  print number_of_movies
}
