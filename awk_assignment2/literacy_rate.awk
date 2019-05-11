#! /usr/bin/awk
BEGIN {FS="|"}
{
  region = $2; population = $3; literacy_rate = $10; literates = population*literacy_rate/100;
  region_stats[region,"Literates"]=region_stats[region,"Literates"]+ literates;
  region_stats[region,"Population"]=region_stats[region,"Population"]+population
  regions[region] = 1
}
END{
  for(region in regions){
    print region
    print 100*region_stats[region,"Literates"]/region_stats[region,"Population"]
    #print literate
    print "---------------------"
  }
}
