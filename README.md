# Data Analyst Project on a Customer Shopping Dataset - Retail Sales Data

## Description

For this project. I use a database of Kaggle and I change some parts of the database. In this case, I use the database Cutshop. It´s a database about the most important sales to shopping malls in Istanbul 

## Data analysis project development steps

### Part I: Exploring data in the PostgreSQL database using the SQ language:
  * In this topic I extract of database and load it in postgress
  * I wrote some queries in SQL that allowed me to find out how the database is composed
  * In the file [part1-2](https://github.com/GQ241297/DA-GQ/blob/master/Parte%201-2.sql) are that queries
### Part II: Preparation of flat file data for export to other tools
  * I wrote a query to extract the transaction data from the cutshop database.
  * I created a table that stores the preparation of data with the name "customer_shopping"
   [![parte-2-preparacion-de-datos.png](https://i.postimg.cc/DzPsrGcF/parte-2-preparacion-de-datos.png)](https://postimg.cc/SXjJqJ5t)
  * The query is in the document called [part1-2](https://github.com/GQ241297/DA-GQ/blob/master/Parte%201-2.sql)
### Part III: Creating a data model with Excel Power Query
  * Using the (customer_shopping.csv) file as data source to create a table (query object) in the Power Pivot data model.
  * Create a Calendar table in a separate Excel file, and include the following columns:
[![columnas-tabla-calendario.png](https://i.postimg.cc/1zxfsrMX/columnas-tabla-calendario.png)](https://postimg.cc/gxDYKRCb)
  * 
### 4. Memorandum
  * Lista de memorandums aplicados a los colaboradores por diferentes tipos de falta
  * Nro de Memoradums que tiene el colaborador
### 5. Bonos Venta
  * Bono otorgado (aparte del sueldo) por cumplir con las ventas
  * Bono promedio histórico, Desviación estandar de los bonos recibidos, Nro de veces que obtuvo un bono menor al 25% 

## Conclusiones

* Se realizó una regresión logistica para detectar la probabilidad que un colaborador cese
* Se detectaron las principales variables que influyen en la rotación directamente o inversamente
