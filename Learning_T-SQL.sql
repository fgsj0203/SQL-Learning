/*
Code project = Learning SQL and T-SQL
name project = dale SQL
author = Francisco Junior
version code = 1.0
database use = AdventureWorks2017
*/

----------------------------------------------------------------------
/*
First challange = return first name and last name
Sorting names in order ascendent
*/

select p.FirstName, p.LastName
from Person.Person as P
order by p.FirstName ASC

----------------------------------------------------------------------

/*
Second challenge = using word key "Distinct" for return last names different
Sorting last names in order ascendent
*/

select distinct p.LastName
from Person.Person as p
order by p.LastName ASC
----------------------------------------------------------------------

/*
Third challenge = using clausule "where" for conditions for return values
*/

select *
from Person.Person as p
where p.LastName = 'miller' and p.FirstName = 'Anna';

----------------------------------------------------------------------

/*
four challenge = using clausule "where" for conditions clausule "and"/"or" for return values
*/

select *
from Production.Product as p
where p.Color = 'blue' or p.Color = 'black'

----------------------------------------------------------------------

/*
five challenge = using clausule "where" for conditions clausule "and"/"or" and operator aritmetics (< / >) for return values
*/

select *
from Production.Product as p
where p.ListPrice > 1500 and p.ListPrice < 5000
