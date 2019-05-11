#! /usr/bin/awk
BEGIN{
  FS="|"
}
($8 ~ "Spanish") {print "Yo "$1}
($8 ~ "German") {print "Der "$1}
