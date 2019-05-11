#! /usr/bin/awk
BEGIN{

};
{if(tolower($0)~"bad"||tolower($0)~"bor"||tolower($0)~"can't"||tolower($0)~"can not"||tolower($0)~"congested"||tolower($0)~"unable"||tolower($0)~"not able"||tolower($0)~"control"||tolower($0)~/:\(/||tolower($0)~"fear"||tolower($0)~"not"||tolower($0)~"less"||tolower($0)~"hard"||tolower($0)~"pay"||tolower($0)~"pain"||tolower($0)~"long"||tolower($0)~"heavy"||tolower($0)~"lack"||tolower($0)~"injuries"||tolower($0)~"low"||tolower($0)~"worst"||tolower($0)~"left"||tolower($0)~"leave"||tolower($0)~"miss"||tolower($0)~"no "||tolower($0)~"far"||tolower($0)~"rent"||tolower($0)~"hurt"||tolower($0)~"tired"||tolower($0)~"bye"||tolower($0)~"small"||tolower($0)~"slow"||tolower($0)~"difficult"||tolower($0)~"typing speed"||tolower($0)~"vibrant"||tolower($0)~"have to"||tolower($0)~"sleepy"||tolower($0)~"even "||tolower($0)~"change"||tolower($0)~"changing"||tolower($0)~"foosball"||tolower($0)~"leaving"||tolower($0)~"paying"||tolower($0)~"kidney"||tolower($0)~"too cool"||tolower($0)=="bharat bandh"||tolower($0)~"changing weather")
  {
    print "O|"$0
  }
  else
  {
    print "W|"$0
  }
};
END{

};
