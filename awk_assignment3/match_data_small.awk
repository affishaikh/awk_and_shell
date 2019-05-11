#! /usr/bin/awk
BEGIN{
  FS=" "
};
($1~"^1"){
  str_index=length($2)-3; string=$2
  substring=substr(string,str_index)
  data[substring]=$2
};
($1~"^2"){
  str_index=5; string=$2
  substring=substr(string,1,4)
  number=substr(string,5)
  data[substring]=data[substring]number
};
END{
  for(i in data)
  {
    print data[i]
  }
};
