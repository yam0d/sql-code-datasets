select * from sales;
select * from people;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID 
from sales as s
join people as p on p.SPID = s.SPID; 

select s.SaleDate, s.Amount, s.product
from sales as s
left join products as pr on pr.PID = s.PID;

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team 
from sales as s
join people as p on p.SPID = s.SPID 
join products as pr on pr.PID = s.PID
where s.Amount < 500 and p.Team = 'Delish';

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team 
from sales as s
join people as p on p.SPID = s.SPID 
join products as pr on pr.PID = s.PID
join geo as g on g.GeoID = s.GeoID
where s.Amount < 500 and p.Team = '' and g.Geo in ('New Zealand', 'India')
order by s.SaleDate;

select g.geo, sum(Amount), avg(Amount), sum(boxes)
from sales as s
join geo as g on g.GeoID = s.GeoID
group by g.geo;

select pr.category, p.team, sum(boxes), sum(amount)
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.PID = s.PID
where p.team <> ''
group by pr.Category, p.Team
order by pr.Category, p.Team;

select pr.Product, sum(s.amount) as 'Total amount'
from sales as s
join products as pr on pr.pid = s.pid
group by pr.Product
order by 'Total amount' desc
limit 10;