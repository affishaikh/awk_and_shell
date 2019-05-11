#! /usr/bin/awk
BEGIN{
  line="echow"  
  print line
}
(line~$1){
  print $1
}
