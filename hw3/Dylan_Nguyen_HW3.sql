select name, statecode from states;

select name, statecode, population_1950 as 'populate_1950', population_2010 from counties where name like 'Prince%' order by statecode;

select population_2010 as 'populate_2010' from states inner join senators s on states.statecode = s.statecode where s.name = "Richard Lugar";

select COUNT(counties.name) as "Maryland Counties" from counties inner join states on states.statecode = counties.statecode where states.name = "Maryland";

select name from states order by admitted_to_union DESC limit 1;

select s.name from senators s where s.name not in (select chairman from committees) and affiliation = 'D' order by s.name;
