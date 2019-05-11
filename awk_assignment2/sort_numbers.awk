#! /usr/bin/awk
BEGIN{
  random_number_index=1
};
{
  random_numbers[random_number_index++]=$0
};
END{
  for(i=1; i<length(random_numbers);i++)
  {
    for(j=i+1;j<=length(random_numbers);j++)
    {
      if(random_numbers[i]>random_numbers[j])
      {
        temp=random_numbers[j]
        random_numbers[j]=random_numbers[i]
        random_numbers[i]=temp
      }
    }
  }
  for(i=1;i<=length(random_numbers);i++)
  {
    print random_numbers[i]
  }
};
