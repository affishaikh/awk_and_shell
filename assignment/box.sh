text=$1
middle_line="|$text|"
top_bottom_line=$(./hyphens.sh "$middle_line")
echo $top_bottom_line
echo $middle_line
echo $top_bottom_line
