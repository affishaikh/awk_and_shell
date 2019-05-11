#! /usr/bin/awk
BEGIN{
  FS="|"
  no_of_releases=0
  year=0
}

{
  for(i=1; i<=255; i++)
  {
    if(NR==i) {year=$2}
    if(year==$2) {no_of_releases+=1}
    print year
  }
}

END{
  print year" "no_of_releases
}
