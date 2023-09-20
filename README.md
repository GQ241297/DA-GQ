# Proyecto Employee Turnover

## Description

For this project. I use a database of kaggle and I change some parts of the database. In this case I use the database Cutshop. It´s a database about the most important sales to shopping malls in Instambul 

## Data analysis project development steps

### Part I: Exploring data in the PostgreSQL database using the SQ language:
  * In this topic I extract of database and load in postgress
  * I wrote some queries in SQL that allowed me to find out how the database is composed
  * In the file [part1-2](https://github.com/GQ241297/DA-GQ/blob/master/Parte%201-2.sql) are that queries
### Part II: Preparation of flat file data for export to other tools
  * I wrote a query to extract the transaction data from the custshop database.
  * I created a one table that store the preparation of data with name "customer_shopping"
   [![parte-2-preparacion-de-datos.png](https://i.postimg.cc/DzPsrGcF/parte-2-preparacion-de-datos.png)](https://postimg.cc/SXjJqJ5t)
  * The query is in the document called [part1-2](https://github.com/GQ241297/DA-GQ/blob/master/Parte%201-2.sql)

### Part III: Creating a data model with Excel Power Query
  * Base de colaboradores que entraron al programa de mejora por bajo desempeño o alguna indiciplina.
  * Nro de veces que entro al prorama de mejora
### 4. Memorandum
  * Lista de memorandums aplicados a los colaboradores por diferentes tipos de falta
  * Nro de Memoradums que tiene el colaborador
### 5. Bonos Venta
  * Bono otorgado (aparte del sueldo) por cumplir con las ventas
  * Bono promedio histórico, Desviación estandar de los bonos recibidos, Nro de veces que obtuvo un bono menor al 25% 

## Conclusiones

* Se realizó una regresión logistica para detectar la probabilidad que un colaborador cese
* Se detectaron las principales variables que influyen en la rotación directamente o inversamente
