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

----------------------------------------------------------------------
--Using clausule TOP and challenge

select top 10*
from Production.Product

----------------------------------------------------------------------
--Using a command ORDER BY

--using condition ASC
select top 10*
from Person.Person as p
order by p.FirstName asc

--using condition DESC
select top 10*
from Person.Person as p
order by p.FirstName desc

--Others manipulation with first name in asc and last name in desc
select p.FirstName, p.LastName
from Person.Person as p
order by p.FirstName asc, p.LastName desc

----------------------------------------------------------------------
--Return values of productId top 10 biggest value include in system

select top 10(p.ProductID)
from Production.Product as p
order by p.ListPrice desc

--Return values reference a name and number product of products with ProductID 1~4
--First model
select p.Name, p.ProductNumber
from Production.Product as p
where p.ProductID between 1 and 4;

--Second model
select top 4 p.Name, p.ProductNumber
from Production.Product as p
order by ProductID

----------------------------------------------------------------------
--Using command "BETWEEN" for return values in interval

--Return amount products include in system with price bigger 1500 dollars
select count(p.ListPrice)
from Production.Product as p
where p.ListPrice > 1500

--Return amount names peoples with initial letter "p"
select count(p.LastName)
from Person.Person as p
where p.LastName like ('p%')

--Return amount cities uniques about clients is included in system
select count(distinct (p.City))
from Person.Address as p

--Return amount products with color red with price between 500 and 1000 dollars

select count(p.Color)
from Production.Product as p
where p.Color = 'red' and p.ListPrice between 500 and 1000

--Return amount products includes with word 'road' in your name

select count(*)
from Production.Product as p
where p.Name like ('%road%')

----------------------------------------------------------------------
--Using command SUM, MIN, MAX and AVG for calculate operation mathematical

select *
from Sales.SalesOrderDetail

select top 2 sum(s.LineTotal) as 'sum final'
from Sales.SalesOrderDetail as s

select top 10 min(s.LineTotal) as 'Values minimal'
from Sales.SalesOrderDetail as s

select top 10 max(s.LineTotal) as 'Values maximal'
from Sales.SalesOrderDetail as s

select top 10 avg(s.LineTotal) as 'Values average'
from Sales.SalesOrderDetail as s

----------------------------------------------------------------------
--Using command "group by" for union values about groups

--Consulting of all values table
select *
from Sales.SalesOrderDetail as s

--organizing values about product id
select s.ProductID ,COUNT(s.ProductID) 'Amount of sales'
from Sales.SalesOrderDetail as s
group by s.ProductID

--Return names amount of names in database
select p.FirstName, COUNT(p.FirstName) as 'Amount names of in database'
from Person.Person as p
group by p.FirstName

--Returna average of price with products color silver
select p.Color, AVG(p.ListPrice) as 'Price average of product with color'
from Production.Product as p
group by p.Color

--Challenge using command group by 
select p.MiddleName, COUNT(p.MiddleName) 'Amount names with equal middle name'
from Person.Person as p
group by p.MiddleName

--Second challenge 
select s.ProductID, AVG(s.OrderQty) as 'Average price of products'
from Sales.SalesOrderDetail as s
group by s.ProductID

----------------------------------------------------------------------
--Using command "INNER JOIN" for union information most one table 

--Verify values of people general
select top 10*
from Person.Person as p

--Verify values about email of people
select top 10*
from Person.EmailAddress as p

--Using command INNER JOIN for junction values of more than table
select p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
from Person.Person as p inner join Person.EmailAddress as pe on p.BusinessEntityID = pe.BusinessEntityID


