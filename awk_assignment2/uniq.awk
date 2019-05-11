#! /usr/bin/awk
BEGIN{
  FS="|"
  region=""
}
(region!~$2){
  region=region"\n"$2
}
END{
  print region
}
