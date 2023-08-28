/*Parte 1

1. Identifique la tabla principal, es decir, la que tiene la 
información de las transacciones. ¿Cuántas filas 
tiene esta tabla?*/
select * from customer_shopping

/*2. Suponga que las ventas se pueden calcular como el producto 
de la cantidad de items por el precio. ¿Cuál es el gran total de ventas 
en toda la tabla transaccional?*/
select sum(quantity * price) as Gran_Total from customer_shopping

/*3. ¿Cuál es el rango de fechas de las transacciones, es decir 
la menor fecha y la mayor fecha?*/
select min(invoice_date),max(invoice_date) from customer_shopping

/*4. Muestre la fecha, el número de factura, código de cliente y 
centro comercial de todas las transacciones del año 2021 o 2022 que 
pertenecen a centros comerciales en el distrito de Levent o de Besiktas, 
realizadas por clientes del género femenino, de entre 18 y 25 años, 
de productos en las categorías de Clothing, Shoes o Cosmetics, que 
pagaron con tarjeta de crédito o de débito y en las que el monto total 
de la factura fue de 10 mil liras turcas o más.*/
select * from customer_shopping
select * from categories
select * from genders
select * from payment_methods
select * from shopping_malls


select cus.invoice_date,
cus.invoice_no, 
cus.customer_id,
sh.shopping_mall 
from customer_shopping cus
join categories cat on cus.category_id=cat.category_id
join genders g on g.gender_id=cus.gender_id
join payment_methods p on p.pmt_method_id=cus.payment_method_id
join shopping_malls sh on sh.shopping_mall_id = cus.shopping_mall_id
where extract(year from invoice_date) in (2021,2022) and
sh.district in ('Levent','Besiktas') and 
g.gender='Female' and
(cus.age>=18 and cus.age<=25) and
cat.category in ('Clothing','Shoes','Cosmetics') and
p.payment_method in ('Credit Card','Debit Card') and
cus.price*cus.quantity>=10000

/*5. Muestre el total de unidades vendidas (cantidad), el conteo de 
transacciones (factura) y el total de ventas, agrupados por año y mes, 
en orden cronológico*/
select 
extract(month from invoice_date) as invoice_month,
extract(year from invoice_date) as invoice_year,
sum(quantity) as unidades_vendidas, 
count(1) as conteo_transacciones,
(quantity * price) as total_ventas
from customer_shopping
group by quantity,price,invoice_month, invoice_year
order by invoice_month, invoice_year

/*6. Muestre el total de ventas por cada centro comercial.*/
select sh.shopping_mall,sum(quantity * price) as Total_ventas 
from customer_shopping cus
join shopping_malls sh on sh.shopping_mall_id = cus.shopping_mall_id
group by sh.shopping_mall

/*7. Muestre el total de ventas, desglosado por género y por edad del 
cliente.*/
select g.gender,cus.age,sum(quantity * price) as Total_ventas 
from customer_shopping cus
join genders g on g.gender_id=cus.gender_id
group by g.gender,cus.age
order by g.gender,cus.age

/*8. Muestre el precio promedio por item que corresponde a cada año-mes. 
El número de items facturados está indicado por la columna quantity.*/
select to_char(invoice_date,('MM-YYYY')) AS año_mes,quantity as items,
avg(price) as Precio_promedio
from customer_shopping
group by año_mes,quantity
order by año_mes

/*9. Muestre el monto promedio por factura que corresponde a cada 
año-mes.*/
select to_char(invoice_date,('MM-YYYY')) AS año_mes,invoice_no,
avg(quantity * price) as monto_promedio
from customer_shopping
group by año_mes, invoice_no
order by año_mes

/*10. Muestre las ventas desglosadas por fecha, categoría de producto, 
centro comercial, distrito, forma de 
pago, edad y género del cliente.*/
select cus.invoice_date,
cat.category,
sh.shopping_mall,
sh.district,
p.payment_method,
cus.age,
g.gender
from customer_shopping cus
join categories cat on cus.category_id=cat.category_id
join genders g on g.gender_id=cus.gender_id
join payment_methods p on p.pmt_method_id=cus.payment_method_id
join shopping_malls sh on sh.shopping_mall_id = cus.shopping_mall_id
order by cus.invoice_date



/*Parte 2

Escriba un query para extraer los datos de las transacciones que 
están en la base de datos custshop, de manera que incluya las siguientes 
columnas (en este orden específico):
• invoice_no
• invoice_date
• shopping_mall,
• district,
• customer_id,
• gender
• age
• category
• payment_method
• quantity
• price
Exporte el resultado del query a un archivo en formato csv, 
con este nombre: “customer_shopping.csv”
*/

create table customer_shopping as

select cus.invoice_no,
cus.invoice_date,
sh.shopping_mall,
sh.district,
cus.customer_id,
g.gender,
cus.age,
cat.category,
p.payment_method,
cus.quantity,
cus.price
from customer_shopping cus
join categories cat on cus.category_id=cat.category_id
join genders g on g.gender_id=cus.gender_id
join payment_methods p on p.pmt_method_id=cus.payment_method_id
join shopping_malls sh on sh.shopping_mall_id = cus.shopping_mall_id



