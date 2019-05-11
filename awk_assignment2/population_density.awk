#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  if($5<100)
  {
    population_density["less than 100"]=population_density["less than 100"]"\n"$1
  }  
  if($5>=100 && $5<=300)
  {
    population_density["between 100 and 300"]=population_density["between 100 and 300"]"\n"$1
  }  
  if($5>300)
  {
    population_density["greater than 300"]=population_density["greater than 300"]"\n"$1
  }  
}
END{
  for(a in population_density)
  {
    print "----------------------------------------------------"
    print "Countries having population density "a
    print population_density[a]
  }
}
