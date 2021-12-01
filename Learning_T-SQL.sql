/*
Code project = Learning SQL and T-SQL
name project = dale SQL
author = Francisco Junior
version code = 1.0
database use = AdventureWorks2017
*/

----------------------------------------------------------------------
/*
challange = return first name and last name
Sorting names in order ascendent
*/

select p.FirstName, p.LastName
from Person.Person as P
order by p.FirstName ASC

----------------------------------------------------------------------

/*
challenge = using word key "Distinct" for return last names different
Sorting last names in order ascendent
*/

select distinct p.LastName
from Person.Person as p
order by p.LastName ASC
----------------------------------------------------------------------

/*
challenge = using clausule "where" for conditions for return values
*/

select *
from Person.Person as p
where p.LastName = 'miller' and p.FirstName = 'Anna';

----------------------------------------------------------------------

/*
challenge = using clausule "where" for conditions clausule "and"/"or" for return values
*/

select *
from Production.Product as p
where p.Color = 'blue' or p.Color = 'black'

----------------------------------------------------------------------

/*
challenge = using clausule "where" for conditions clausule "and"/"or" and operator aritmetics (< / >) for return values
*/

select *
from Production.Product as p
where p.ListPrice > 1500 and p.ListPrice < 5000
----------------------------------------------------------------------

/*
challenge = using clausule "where" for conditions clausule "and"/"or" and operator aritmetics (< / >) for return values
            and clausule <> this is called all "different"
*/

select *
from Production.Product as p
where p.Color <> 'red';

----------------------------------------------------------------------

/*
challenge =  return values of table production with weight up 500kg and down 700kg

*/
--1º
select p.Name as 'Name of part'
from Production.Product as p
where p.Weight >= 500 and p.Weight <= 700
----------------------------------------------------------------------
--2º
select *
from HumanResources.Employee as he
where he.MaritalStatus = 'S' or he.MaritalStatus = 'M' and SalariedFlag = 1
----------------------------------------------------------------------
--3º
select *
from Person.Person
where FirstName = 'peter' and LastName = 'krebs';

select *
from Person.EmailAddress
where BusinessEntityID = 26
----------------------------------------------------------------------

----------------------------------------------------------------------
/*
Using clausule "Count" for calculating numbers of column
*/

select count (p.Title)
from Person.Person as p

----------------------------------------------------------------------
--Challenge using clausule COUNT

--1º = return amount products in tables Product
select count (*)
from Production.Product as p

--2º = return amount height products in table Product
select count(p.Size)
from Production.Product as p

--3º = return amount products size different in table products
select count (distinct p.Size)
from Production.Product as p














