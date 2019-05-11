#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  country["India","Population"]="100 crore"
  country["India","Capital"]="Delhi"
  country["UK","Population"]="80 crore"
  country["UK","Capital"]="Mumbai"
}
END{
  for(a in country)
  {
    print a
    print country[a]
  }
}
