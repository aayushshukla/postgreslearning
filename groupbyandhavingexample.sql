create table ipl_winners_data
( 
	data_id serial primary key,
	team_name varchar(150) not null ,
	win_year int not null,
	venue text not null

);
insert into ipl_winners_data(team_name,win_year,venue)
values
('RR',2008,'Mumbai'),
('DC',2009,'Johannesburg'),
('CSK',2010,'Mumbai'),
('CSK',2011,'Chennai'),
('KKR',2012,'Mumbai'),
('MI',2013,'Kolkata'),
('KKR',2014,'Mumbai'),
('MI',2015,'Kolkata');

select * from ipl_winners_data;

-- from -> where --> group by --> having --> select -->distinct  --> order by -->limit

select team_name,  count(win_year) from ipl_winners_data group by team_name order by count(team_name) desc;
select venue ,count(win_year) from ipl_winners_data group by venue ; 

-- Having vs Where 
-- Where clause filters the rows on basis of conditions, apply condtion on rows 
-- Having clause filter groups of rows according to given conditions, apply condition on groups
-- having is for agg functions

select venue ,count(win_year) from ipl_winners_data group by venue having count(win_year)>1 ;

select team_name,  count(win_year) from ipl_winners_data group by team_name  having 
count(win_year) >=2 order by count(team_name) desc;
