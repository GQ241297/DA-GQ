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
  * Create a Calendar table in a separate Excel file, and include the next columns:
[![columnas-tabla-calendario.png](https://i.postimg.cc/1zxfsrMX/columnas-tabla-calendario.png)](https://postimg.cc/gxDYKRCb)
  * Create a calculated column for the sales amount(Sales) which is calculated as the product of the quantity and the unit price
  * In my fact table I will create my base measurements: Quantity y Sales (I am not going to create a measure for the "Price" column because that column is a non-additive fact, since it is implicitly the result of a division sales divided by the number of items, therefore it does not make sense to perform an aggregation operation on it, such as a simple summation.)
  * I created an additional measure that calculates the average price per item. This measure will have the name Average Price
### Part IV: Creating Analytical Reports with Excel Power Pivot
  * Clustered columns vertical bar chart showing monthly total sales for all malls combined. of all malls combined.
    [![grafico-1.png](https://i.postimg.cc/SNWhnX0T/grafico-1.png)](https://postimg.cc/N5fVVjjm)
  * Line graph showing the average price of items belonging to the categories "Technology", "Shoes" and "Clothing". The chart will show the months on the horizontal axis and is created to filter a specific year and a specific mall.
    [![segundo-grafico.png](https://i.postimg.cc/brPst7v4/segundo-grafico.png)](https://postimg.cc/9Rxm3NZB)
  * Chart showing, for a selected year, month and mall, the total sales per day, broken down by payment method. The chart allows you to visually compare the daily sales by each payment method, as well as the total daily sales from one day to another.
    [![tercer-grafico.png](https://i.postimg.cc/Vk7RYRNj/tercer-grafico.png)](https://postimg.cc/gxZRs38J)
### 5. Bonos Venta
  * Bono otorgado (aparte del sueldo) por cumplir con las ventas
  * Bono promedio histórico, Desviación estandar de los bonos recibidos, Nro de veces que obtuvo un bono menor al 25% 

## Conclusiones

* Se realizó una regresión logistica para detectar la probabilidad que un colaborador cese
* Se detectaron las principales variables que influyen en la rotación directamente o inversamente
