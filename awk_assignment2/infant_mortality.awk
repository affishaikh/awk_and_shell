#! /usr/bin/awk
BEGIN{
  FS="|"
  highest_infant_mortality_country=""
  highest_infant_mortality=0
}
{
  if($9>20000)
  {
    infant_mortality[$1]=$8
  }
}
END{
  for(a in infant_mortality)
  {
      if(infant_mortality[a]>highest_infant_mortality)
      {
        highest_infant_mortality_country=a
        highest_infant_mortality=infant_mortality[a]
      }
  }
  print highest_infant_mortality_country
  print highest_infant_mortality
}
