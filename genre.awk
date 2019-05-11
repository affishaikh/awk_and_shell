#! usr/bin/awk

BEGIN {
  FS="|"
  number_of_movies=0
}
($5~"Drama" && $5~"Thriller"){
  print $1 "|" $5 
  number_of_movies+=1
}
END {
  print number_of_movies
}
