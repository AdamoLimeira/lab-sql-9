use sakila;

select * from rental;

#Create a table rentals_may to store the data from rental table with information for the month of May.
create table rentals_may(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
    );

#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
select * from rentals_may;
insert into rentals_may (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
from rental where rental_date like ('2005-05%');

#Create a table rentals_june to store the data from rental table with information for the month of June.
create table rentals_june(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
                             );

#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
select * from rentals_june;
insert into rentals_june (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
from rental where rental_date like ('2005-06%');

#Check the number of rentals for each customer for May.
select * from rentals_may;
select count(rental_id), customer_id from rentals_may group by customer_id;

#Check the number of rentals for each customer for June.
select * from rentals_june;
select count(rental_id), customer_id from rentals_june group by customer_id;