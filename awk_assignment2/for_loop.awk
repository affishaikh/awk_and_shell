#! /usr/bin/awk

BEGIN {
  a="aftab"
  name[a]="programmer"
  name[a"1"]="coder"
  for(i in name)
  {
    print name[i]
    print name[i"1"]
  }
}
