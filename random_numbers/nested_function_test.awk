#! /usr/bin/awk
BEGIN{
  B()
};
function A(){
  print "A"
  function B(){
    print "B"
  };
}
END{

};
