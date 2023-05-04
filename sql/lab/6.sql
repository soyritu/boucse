--a
create table football_team
(
    team_id int,
    team_name varchar(10),
    number_of_win int,
    constraint football_team_team_id_pk primary key (team_id)
);
insert into football_team values(1,'a',5);
insert into football_team values(2,'bangladesh',6);
insert into football_team values(3,'c',7);
create table saff_football
(
    trophy_year int primary key,
    team_id int,
    best_player varchar(10)
);
insert into saff_football values(2002,1,'x');
insert into saff_football values(2015,2,'y');
insert into saff_football values(2004,3,'z');
create table player
(
    player_id int primary key,
    team_id int,
    player_name varchar(10),
    total_match int,
    total_goal int,
    dob date
);
insert into player values(10,1,'x',3,4,'01-JAN-2002');
insert into player values(11,2,'y',3,4,'01-JAN-2003');
insert into player values(12,2,'z',3,4,'01-JAN-2004');
--b
select team_name,best_player from football_team f,saff_football s
	where f.team_id = s.team_id
	order by trophy_year desc;
select player_name from player
	where team_id = (select team_id from football_team
    							where team_name = 'bangladesh');
--d
select team_name from football_team
	where team_id = (select team_id from saff_football
    							where trophy_year = 2015);

