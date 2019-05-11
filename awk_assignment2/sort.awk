#! /usr/bin/awk
BEGIN{
  name_index=1
};
{
  names[name_index++]=$0
};
END{
  for(i=1; i<length(names);i++)
  {
    for(j=i+1;j<=length(names);j++)
    {
      if(names[i]>names[j])
      {
        temp=names[j]
        names[j]=names[i]
        names[i]=temp
      }
    }
  }
  for(i=1;i<=length(names);i++)
  {
    print names[i]
  }
};
