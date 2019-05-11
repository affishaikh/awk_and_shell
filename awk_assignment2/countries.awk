#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  countries[$2]=countries[$2]"\n"$1 
}
END{
  for(a in countries)
  {
    print "--------------\n"
    print a
    print countries[a]
  }
}
