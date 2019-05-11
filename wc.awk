#! /usr/bin/awk
BEGIN{
  line=0
  chars=0
  words=0
}
{chars+=length($0)+1
  words+=split($0,a," ")
  }
END{
  line=NR; print line
  print chars
  print words
}
