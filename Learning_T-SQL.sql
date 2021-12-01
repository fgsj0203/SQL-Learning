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

