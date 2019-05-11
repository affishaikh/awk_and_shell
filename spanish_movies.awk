#! /usr/bin/awk
BEGIN{
  FS="|"
  no_of_movies=0
}
(tolower($8)~"spanish" && (!(tolower($9)~"spain"))){
  no_of_movies+=1
}
END{
  print no_of_movies
}
