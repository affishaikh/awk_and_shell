#! /usr/bin/awk
BEGIN{
  FS="|"
  director=""
}

($8 ~ "Korean" && (!(director ~ $6))){
  director=director"\n"$6
}
END{
  gsub(", ","\n",director)
  print director
}
