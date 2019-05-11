#! usr/bin/awk

BEGIN {
  FS="|"
  director=""
}
($2>=1950 && $2<=1959 && director!=$6){
  print $6
  director=$6 
}
