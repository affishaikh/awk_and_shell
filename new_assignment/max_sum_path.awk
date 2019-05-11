#! /usr/bin/awk
BEGIN{
  j=1
}
{
  if(NR==1)
  {
    max_sum[1]=$0
  }
  else
  {
    for(i=1; i<=length(max_sum);i++)
    {
      temp[j++]=max_sum[i]+$i
      temp[j++]=max_sum[i]+$(i+1)
    }
    for(i=1;i<=length(temp);i++)
    {
      max_sum[i]=temp[i]
    }
    j=1
  }
}
END{
  for(i=1;i<=length(max_sum);i++)
  {
    print max_sum[i]
  }
}
