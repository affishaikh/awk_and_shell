#! /usr/bin/awk
BEGIN{
  data="0,1,2,3,4,6,out"
  split(data, result, ",")
  srand()
  Team_India="M. S. Dhoni,Virat Kohli,Rohit Sharma,Yuvraj Singh,Ashwin,Jadeja,Suresh Raina,Hardik Pandiya,Ajinkya Rahane,K. L. Rahul,Shikhar Dhawan"
  Team_Australia="Steve Smith,David Warner,Glenn Maxwell,Mitchell Starc,Aaron Finch,Nathan Lyon,Usman Khwaja,Mitchell Marsh,Josh Hazlewood,Shaun Marsh,Tim Paine"
  captain_of_india="Virat Kohli"
  captain_of_australia="Tim Paine"
  split(Team_India, team_india, ",")
  split(Team_Australia, team_australia, ",")
  player_index=1
  team_india_score=0
  team_australia_score=0
  introduction_to_game()
  #player_selection()
};
function introduction_to_game(){
  print "Let's play Cricket"
  print "There are two teams : India and Australia"
  print "India's captain is Virat Kohli"
  print "Austrailia's captain is Tim Paine"
  print "Let's have toss"
  do_toss()
}
function do_toss(){
  print "Who will choose? [Virat/Tim]"
  getline who_will_choose
  if(tolower(captain_of_india) ~ tolower(who_will_choose))
  {
    captain_choosing_toss=captain_of_india
    captain_not_choosing_toss=captain_of_australia
  }
  else
  {
    captain_choosing_toss=captain_of_australia
    captain_not_choosing_toss=captain_of_india
  }
  print captain_choosing_toss" please choose your preference [head/tail]"
  getline toss_preference
  Toss="Head,Tail"
  split(Toss,toss,",")
  random_toss_selection=int((rand()*2)+1)
  print "\n\nCoin is tossed and the result is "toss[random_toss_selection]
  if(tolower(toss[random_toss_selection])==tolower(toss_preference))
  {
    captain_winning_the_toss=captain_choosing_toss
    print captain_winning_the_toss" won the toss"
  }
  else
  {
    captain_winning_the_toss=captain_not_choosing_toss
    print captain_winning_the_toss" won the toss" 
  }
    print captain_winning_the_toss" what do you want to do? [bat/ball]"
    getline bat_or_ball_preference
    if(tolower(bat_or_ball_preference)=="bat")
    {
      if(captain_winning_the_toss~"Virat")
      {
        batting_team_inning1="India"
        batting_team_inning2="Australia"
      }
      else
      {
        batting_team_inning1="Australia"
        batting_team_inning2="India"
      }
    }
    else
    {
      if(captain_winning_the_toss~"Virat")
      {
        batting_team_inning1="Australia"
        batting_team_inning2="India"
      }
      else
      {
        batting_team_inning1="India"
        batting_team_inning2="Australia"
      }
    }
      batting_team=batting_team_inning1
      inning1()
}
function inning1(){
  inning=1
  print batting_team" is going to bat"
  player_selection()
}
function inning1_completion(){
  print "All out. Inning 1 is complete"
  if(batting_team=="India")
  {
    team_india_score=player_on_strike_score+team_india_score
    print batting_team"'s score is "team_india_score
  }
  else
  {
    team_australia_score=player_on_strike_score+team_australia_score
    print batting_team"'s score is "team_australia_score
  }
  inning2()
}
function inning2(){
  inning=2
  player_index=1
  player_on_strike_score=0
  batting_team=batting_team_inning2
  print batting_team" is going to bat"
  player_selection()
}
function inning2_completion(){
  print "All out. Inning 2 is complete"
  if(batting_team=="India")
  {
    team_india_score=player_on_strike_score+team_india_score
    print batting_team"'s score is "team_india_score
  }
  else
  {
    team_australia_score=player_on_strike_score+team_australia_score
    print batting_team"'s score is "team_australia_score
  }
  if(team_india_score>team_australia_score)
  {
    print "India won the match"
  }
  else
  {
    print "Australia won the match"
  }
    print "Well played"
    exit
}
function player_selection(){
    if(player_index>11)
    {
      if(inning==1)
      {
        inning1_completion()
      }
      else
      {
        inning2_completion()
      }
    }
    else if(batting_team=="India"){
    team_india_score=player_on_strike_score+team_india_score
    player_on_strike=team_india[player_index++]
    print player_on_strike " is on strike"
    player_on_strike_score=0
  }
  else{
    team_australia_score=player_on_strike_score+team_australia_score
    player_on_strike=team_australia[player_index++]
    print player_on_strike " is on strike"
    player_on_strike_score=0
  }
}
{
    random_result_slection=int((rand()*7)+1)
    if(result[random_result_slection]~"[0-6]")
    {
      print result[random_result_slection]" runs" 
      player_on_strike_score=player_on_strike_score+result[random_result_slection]
    }
    else if(result[random_result_slection]=="out")
    {
      print result[random_result_slection]
      print player_on_strike" "result[random_result_slection]" "player_on_strike "'s score is " player_on_strike_score
      player_selection()
    }
};
END{
};
