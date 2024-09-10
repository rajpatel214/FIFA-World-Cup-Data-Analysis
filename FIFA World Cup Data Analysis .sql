
use sports analyst;

select * from team_stats ts ;

select * from wc_stats ws ;

#2.	Write an sql query to show all the UNIQUE team names 

select distinct team from team_stats ts ;

#3.	Write an SQL query to show name of team which has rank 1 from group 7 

select team ,`rank`,`group` from team_stats ts where `rank` =1; and `group` = 7;

#4.	Write an sql query to show count of all teams 

select count(team) from team_stats ts ;

#5.	Write an SQL query to show matches_played by each team

select matches_played,team from team_stats ts ;

#6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent

select team,(wins /matches_played)*100 as wins_percent from team_stats ts ;

#7.	Write an SQL query to show which team has maximum goals_scored and their count

select max(goals_scored) as maximum_goals ,team from team_stats ts group by team having maximum_goals =9 ;

#8.	 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team

select team, (draws/matches_played)*100 as  from team_stats ts ;

#9.	 Write an SQL query to show which team has minimum goals_scored and their count

select min(goals_scored) as minimum_goals ,team from team_stats ts group by team order by minimum_goals asc ;

#10.Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent

select team, (losses/matches_played)*100 as losses_percent from team_stats ts order by  losses_percent asc ;

#11.Write an SQL query to show the average goal_difference 

select avg(goal_difference) from team_stats ts ;

#12. Write an SQL query to show name of the team where points are 0 

select team ,points from team_stats ts where points=0 ;

#13.Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select * from team_stats ts where expected_goal_scored < exp_goal_conceded ;

#14.Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select team,exp_goal_difference from team_stats ts where exp_goal_difference between -0.5 and 0.5 ;


#15.Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select * from team_stats ts order by exp_goal_difference_per_90 asc;

#16.Write an SQL query to show team which has maximum number of players_used

select max(players_used),team from  wc_stats ws group by team;

#17.Write an SQL query to show each team name and avg_age in ascending order by avg_age

select avg_age,team from wc_stats ws order by avg_age asc ;

#18.Write an sql query to show average possession of teams 

select avg(possession) from wc_stats ws ;

#19.Write a SQL query to show team which has played atleast 5 games

select team,matches_played from team_stats ts; where matches_played ;


#20.Write an SQL query to show all data for which minutes is greater than 600

select * from wc_stats ws where minutes >600;

#21.Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals,assists from wc_stats ws order by goals asc;

#22.Write an SQL query to show team, pens_made, pens_att in descending order by pens_made

select team,pens_made,pens_att from wc_stats ws order by pens_made desc ;

#23.Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 

select team,cards_yellow,cards_red from wc_stats ws where ws.cards_red =1 order by cards_yellow asc ;

#24.Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 

select team,goals_per90,assists_per90,goals_assists_per90 from wc_stats ws order by goals_assists_per90 desc ;

#25.Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 

select team,assists_per90,goals_pens_per90,goals_assists_per90 from wc_stats ws order by goals_assists_pens_per90 asc;

#26.Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 

select team,shots,shots_on_target,shots_on_target_pct from wc_stats ws where shots_on_target_pct < 90 order by shots_on_target_pct asc ;

#27.Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium


select team, shots_per90,shots_on_target_per90 from wc_stats ws where team = 'belgium' ;

#28.Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 

select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance from wc_stats ws order by average_shot_distance desc  ;

#29.Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 

select team, errors,touches from wc_stats ws where errors = 0 and touches<1500 ;

#30.Write an SQL query to show team, fouls which has maximum number of fouls

select team,fouls from wc_stats ws where fouls in (select max(fouls) from wc_stats ws) ;

#31.Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select team,offsides from wc_stats ws where offsides >0 or offsides<0 ;

#32.Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 

select team,aerials_won,aerials_lost,aerials_won_pct from wc_stats ws order by aerials_won_pct desc ;

#33.Write an SQL query to show number of teams each group has!

select team ,`group` from team_stats ts ;

#34.Write a SQL query to show team names group 6 has

select team,`group` from team_stats ts where `group` = 6;

#35.Write an SQL query to show Australia belongs to which group 

select  team,`group`  from team_stats ts where team = 'Australia';

#36.Write an SQL query to show group, average wins by each group 

select team,`group`, avg(wins) as avg_win from team_stats ts group by `group`,team ;

#37.Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select max(expected_goal_scored) as max_goal_scored,`group` from team_stats ts  group by `group`  order by  max_goal_scored asc ;

#38.Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 

select min(exp_goal_conceded) as min_goal_conceded ,`group` from team_stats ts  group by `group`  order by min_goal_conceded desc ;

#39.Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 

select `group`,avg(exp_goal_difference_per_90) as goal_difference_per from team_stats ts group by `group`  order by goal_difference_per desc  ;

#40.Write an SQL query to show which team has equal number of goals_scored and goals_against 

select team from team_stats ts where goals_scored = goals_against ;

#41.Write an SQL query to show which team has maximum players_used 

select team , max(players_used) from wc_stats ws group by team ;

#42.Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 

select team,players_used,avg_age,games,minutes from wc_stats ws where minutes <500 and minutes >200;

#43.Write an SQL query to show all data of group_stats in ascending order BY points

select * from team_stats ts order by points asc ;

#44.Write an SQL query to show ALL UNIQUE team in ascending order by team

select  distinct team from team_stats ts order by team asc;

#45. Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select avg(avg_age) from wc_stats ws order by avg(avg_age) desc ;

#46.Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select sum(fouls) as sum_fouls ,`group` from team_stats ts join wc_stats ws on ts.team = ws.team group by `group` order by  sum_fouls desc ;

#47.Write an SQL query to show total number of games for each group and arrange it in descending order by games. 

select `group`,count(games) as total_games from team_stats ts join wc_stats ws on ts.team = ws.team group by `group` order by total_games desc ;

#48.Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 

select count(players_used) as total_payer_use,`group` from  team_stats ts join wc_stats ws on ts.team = ws.team group by `group` order by total_payer_use asc ;

#49.Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.

select count(offsides) as total_offside,`group` from  team_stats ts join wc_stats ws on ts.team = ws.team group by `group` order by total_offside asc ;

#50.Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select avg(passes_pct) as avg_passes, `group` from wc_stats ws join team_stats ts on ts.team = ws.team group by `group` order by avg_passes desc ;

#51.Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select avg(goals_per90) as avg_goals, `group` from team_stats ts join wc_stats ws 
on ts.team = ws.team group by `group` order by  avg_goals asc ;







