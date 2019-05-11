BEGIN{
  path[1]=20
  path[2]=30
}
{
  add=path
}
END{
  print add[1] add[2]
}
