#! /usr/bin/awk
BEGIN{
  random_number=0
};
{
  srand()
  random_number=int(rand()*9)+1
  print random_number
};
END{

};
