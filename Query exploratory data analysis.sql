-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select "Marital Status",
avg(age) as avg_age from customer
group by "Marital Status";


-- Berapa rata-rata umur customer jika dilihat dari gender nya ?
select case gender, avg(age) as avg_age from customer
group by gender;

-- Tentukan nama store dengan total quantity terbanyak!
select s.storename, sum(t.qty) as sum_qty 
from store as s
inner join "transaction" as t
on s.storeid = t.storeid
group by s.storeid, s.storename
order by sum_qty desc
limit 1;

-- Tentukan nama produk terlaris dengan total amount terbanyak!
select p."Product Name", sum(t.totalamount) as sum_totalamount 
from product as p
inner join "transaction" as t
on p.productid = t.productid
group by p.productid, p."Product Name"
order by sum_totalamount desc
limit 1;
