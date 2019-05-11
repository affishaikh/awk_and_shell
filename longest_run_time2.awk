#! usr/bin/awk

BEGIN {
  run_time=0
  FS="|"}
{
  if(run_time<(0+$4)) run_time=(0+$4)}
END {
  print run_time
}
