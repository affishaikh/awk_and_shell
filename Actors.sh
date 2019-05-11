no_of_actors=$(awk -F'|' '{print $7}' movies.csv | tr ',' '\n' | sort -bu |wc -l) 
echo $no_of_actors
for i in $(seq 1 $no_of_actors); do
  actor_name=$(awk -F'|' '{print $7}' movies.csv | tr ',' '\n' | sort -bu | head -n $i| tail -n 1|sed "s/^ *//")
  echo $actor_name
  echo "----------------"
  cut -d'|' -f1,7  movies.csv | grep "$actor_name"|cut -d'|' -f1|awk 'BEGIN{a=1} {print a"  ", $0, a=a+1}'
  echo "*****************"
done 
