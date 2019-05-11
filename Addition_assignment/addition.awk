#! /usr/bin/awk
BEGIN{
  carry=0
  line=1
}
{
  if(NR==1){
    addition=$0
    split(addition, addition_arr, "")
    next
  }
}
{
  number=$0
  split(number, number_arr, "")
  i=length(addition_arr);j=length(number_arr);
  for(;j>=1;)
  {
    sum_of_two_digits=addition_arr[i]+number_arr[j]    
    if(carry==1)
    {
      sum_of_two_digits+=1
      carry=0
    }
    if(sum_of_two_digits>=10)
    {
      sum_of_two_digits-=10
      carry=1 
    }
    for(l=length(sum_arr); l>=1; l--)
    {
      sum_arr[l+1]=sum_arr[l]
    }
    sum_arr[1]=sum_of_two_digits
    j--
    i--
  }
  if(i==0 && j==0 && carry==1)
  {
    for(l=length(sum_arr); l>=1; l--)
    {
      sum_arr[l+1]=sum_arr[l]
    }
    sum_arr[1]=1 
    carry=0
  }
  while(j==0 && i!=0)
  {
    for(l=length(sum_arr); l>=1; l--)
    {
      sum_arr[l+1]=sum_arr[l]
    }
    if(carry==1)
    {
      sum_of_two_digits=addition_arr[i--]+1
      carry=0
    }
    else{
      sum_of_two_digits=addition_arr[i--]
    }
    if(sum_of_two_digits>=10)
    {
      sum_of_two_digits-=10
      carry=1
    }
    sum_arr[1]=sum_of_two_digits
  }
  if(carry==1)
  {
    for(l=length(sum_arr); l>=1; l--)
    {
      sum_arr[l+1]=sum_arr[l]
    }
    sum_arr[1]=1
    carry=0
  }
  for(m=1;m<=length(sum_arr);m++)
  {
    addition_arr[m]=sum_arr[m]
  }
  delete sum_arr
}
END{
  for(i=1;i<=length(addition_arr);i++)
  {
    printf addition_arr[i]
  }
  print ""
}
