#! /usr/bin/awk
BEGIN{
  FS="|"
  movie_index=1
};
{
  movie_name=$1; movie_runtime=$4;name=1; runtime=2
  if(movie_runtime!="N/A")
  {
    movies[movie_index,name]=movie_name
    movies[movie_index,runtime]=movie_runtime
    movie_index++
  }
};
END{
  for(i=1;i<(movie_index-1);i++)
  {
    for(j=i+1;j<=(movie_index-1);j++)
    {
      if(int(movies[i,2])>int(movies[j,2]))
      {
        temp=movies[j,1]
        movies[j,1]=movies[i,1]
        movies[i,1]=temp
        temp=movies[j,2]
        movies[j,2]=movies[i,2]
        movies[i,2]=temp
      }
    }
  }
  for(i=(movie_index-1); i>=(movie_index-5); i--)
  {
    print movies[i,1]
    print movies[i,2]
  }
};
