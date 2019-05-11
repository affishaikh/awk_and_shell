#! usr/bin/awk

BEGIN {
  sum=0
  FS="|"}
{
  if(sum<(0+$4)) sum=(0+$4)}
END {
  print sum
}
