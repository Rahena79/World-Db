use world;

-- highest life expectancy;

Select Country.lifeExpectancy, Country.Name
From Country
Order by Country.LifeExpectancy Desc;

-- Cities with new

Select city.name
From City
Where city.name Like'New %'
Order by city.name Asc;

-- Top 10 cities by population
Select City.Name, City.Population
From City
Limit 10;

-- Cities with Population Larger than 2,000,000
Select Count(City.Population)
From City
Where City.Population >= 2000000
Order by City.population Asc;

-- Cities starting 'BE'
Select count(city.name)
From City
Where city.name Like'Be%'
Order by city.name Asc;

Select City.Name, City.Population
From City
Where City.Population between 500000 AND 1000000
Order by City.population Asc;

-- Display Cities Sorted by Name in Ascending Order
Select count(City.Name)
From City;

-- Most Populated City
Select City.Name, City.Population
From City
limit 1;

--  City Name Frequency Analysis: Supporting Geography Education

select count(distinct city.name)
From City, Country, Countrylanguage
Order by city.name Asc;

select city.name, count(distinct city.name)  
From city 
group by city.name;

-- City with the Lowest Population
Select City.Name, City.Population
From City
Order by city.population Asc;

-- Country with Largest Population
Select country.population, country.name
From Country
Order by Country.population Desc;

-- Capital of Spain

Select city.name 
From City 
Join Country 
on city.countrycode = country.code 
where country.name like "Spain"
limit 1; 


use world;
-- count distint city
select count(distinct city.name)
from (select distinct city.name from city)
order by city.name asc;

select count(distinct city.name), city.district
from city
order by city.name Asc;

select count(distinct city.name), city.district
from city
join country
on city.countrycode=country.code
order by city.name asc;

select count(distinct city.name)
From city
order by city.name Asc;

Select country.population, country.name 
From Country 
Order by Country.population Desc; 


-- Capital of Spain;

Select city.name, country.name, country.capital From City
Join Country
on city.countrycode=country.code
where country.name like "Spain";

Select distinct(city.name) From City
Join Country
on city.countrycode=country.code
where country.name like "Spain";

-- Cities in Europe;
Select city.name, country.name, country.continent From City
Join Country
on city.countrycode=country.code
where continent like "Europe"
Order by city.name Asc;

-- Average Population by Country;
select AVG (Country.population)
from Country 
Order by Country.population asc; 

-- Capital Cities Population Comparison;
select country.population from country
Join city
on country.CountryCode=city.CountryCode
order by population asc;

select country.population from country 
Join city 
on country.Code=city.CountryCode 
order by country.population asc; 

use world;
select city.name, country.name, country.population 
from country
Join city
on country.Code=city.CountryCode
order by country.population asc;

-- Countries with low Pop densities
select (country.population), country.name
from country
Join city
on country.Code=city.CountryCode
order by population asc;

-- Cities with High GDP per Capita
select Country.GNP/city.population as 'GDP per Capita', city.name
from Country  
join city  
on city.Countrycode=country.code  
Order by 'GDP per Capita' Desc
Limit 20; 

select Country.Population/Country.GNP, city.name, country.region
from Country
join city
on city.Countrycode=country.code
order by Country.Population/Country.GNP Desc;

select Country.Population/Country.GNP as 'GDP per Capita', city.name, country.name 
from Country 
join city 
on city.Countrycode=country.code 
order by 'GDP per Capita' Desc; 


-- Display Columns with Limit (Rows 31-40) cities ranked by population
select (country.population), city.name
from country
Join city
on country.Code=city.CountryCode
order by population asc
limit 10 offset 30;

use world;

Select country.name, city.name, count(city.name)
FROM City 
Join country
on country.Code=city.CountryCode 
where Country.name = 'USA'
group by country.name
order by city.name; 

-- Count Cities in USA
Select count(distinct city.name) 
FROM City 
where City.countrycode = 'USA'  
order by city.name; 

