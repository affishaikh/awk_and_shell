#! /usr/bin/awk
BEGIN{
  FS="|"
  highest_coast=0
  highest_coast_region=""
}
{
  coast[$2]=coast[$2]+($6*$4)
  area[$2]=area[$2]+$4
}
END{
  for(a in coast)
  {
    coastline[a]=coast[a]/area[a]
  }
  for(a in coastline)
  {
    if(coastline[a]>highest_coast)
    {
      highest_coast=coastline[a]
      highest_coast_region=a
    }
  }
  print highest_coast_region
  print highest_coast
}
