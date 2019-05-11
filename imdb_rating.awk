#! /usr/bin/awk
BEGIN{
  FS="|"
}
(tolower($9) ~ "hong kong" && $10 >= 8 && $10 < 9){
  print $1
}
