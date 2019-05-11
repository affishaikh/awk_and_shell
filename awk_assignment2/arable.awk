#! /usr/bin/awk
BEGIN {
  FS="|"
  arable=0
  sum=0
}
{
  arable=arable+($4*$12)
  sum=sum+$4
}
END {
  print arable/sum
}
