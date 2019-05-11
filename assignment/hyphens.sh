#! /bin/bash
text=$1
echo $text|sed 's/./-/g'
