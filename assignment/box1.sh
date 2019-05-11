text=$1
top_bottom_line=$(./hyphens.sh "$text")
echo "+$top_bottom_line+"
echo "|$text|"
echo "+$top_bottom_line+"
