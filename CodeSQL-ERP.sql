/*
First project for learning SQL and T-SQL 
object of project is small ERP for enterprise

Author = Francisco Junior
Version = 1.0
Name Project = "tá amarrado?!"
Date project = 30-11-2021

*/

---------------------------------------------------------------------------
--Creating database and indicate for use
CREATE DATABASE smallERP_MULT
GO
USE smallERP_MULT
---------------------------------------------------------------------------

---------------------------------------------------------------------------

--Creating tables nothing dependence
CREATE TABLE Company (cod_company INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
                      name_company VARCHAR(50),
					  fantasy VARCHAR(20));

---------------------------------------------------------------------------

---------------------------------------------------------------------------

--Creating table unity federal or (state province)
CREATE TABLE UF (cod_uf VARCHAR(2) NOT NULL PRIMARY KEY,
                 name_uf VARCHAR(30) NOT NULL);
				 
---------------------------------------------------------------------------

---------------------------------------------------------------------------

--creating table reference of cities

CREATE TABLE cities (cod_city VARCHAR(7) NOT NULL PRIMARY KEY,
                     cod_uf VARCHAR(2) NOT NULL,
					 name_city VARCHAR(50) NOT NULL,
					 CONSTRAINT fk_cid1 FOREIGN KEY (cod_uf) REFERENCES UF (cod_uf));

---------------------------------------------------------------------------

---------------------------------------------------------------------------

--Creating table reference a client

CREATE TABLE clients (cod_company INT NOT NULL,
                      id_client INT IDENTITY(1,1) NOT NULL,
					  reason_client VARCHAR(100) NOT NULL,
					  fantasy VARCHAR(15) NOT NULL,
					  endereco VARCHAR(50) NOT NULL,
					  nro VARCHAR(10) NOT NULL,
					  district VARCHAR(20) NOT NULL,
					  cod_city VARCHAR(7) NOT NULL,
					  cep VARCHAR(8),
					  cnpj_cpf VARCHAR(15),
					  type_client NCHAR(1) CONSTRAINT ck_tc1 CHECK (type_client in ('F', 'J')),
					  date_create DATETIME NOT NULL,
					  cod_payment INT,
					  CONSTRAINT pk_cli1 PRIMARY KEY (cod_company, id_client),

