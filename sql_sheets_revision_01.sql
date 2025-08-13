# rount , tuncate , mod , pwr (numerical function)


select 10.5 , round(19.5) , round(20.38,1),round(27.38,-1);


select round(49.39,-2);

# truncate used for the extract the valuesd
select truncate(76.35,1);  # just extract the value

# decemile kye bad kou
select floor(5.99999), ceil(4.0001);


# date function  it used to get the data from the date
# more inbuilt function 

select curtime(),curdate(), current_timestamp(), now();

# now will give us current data and time
# adddate will give me the date 
select now(), adddate(now(),1);  # added the data one day , used the all the calculation used , more fouced on this .
# adddate(col_name(), how_many_dayAdded);
# added the interve
select now(), adddate(now(),interval 2 year); 

# current data ,


# importat 

select now(), extract(minute from now);

# reminder of these
# adddate, year, now(), month, extract, dat_format, datadiff() give the diffrence between thenumbers

select now(), date_format(now(),'year is %y'); # only used for the extract the values form the data 
select datediff(now(),'2033-08-3');
# function , string function , number function , date ( scaler function ) this function applyed on each row and give us result to each row.alter

# aggreated function ( mutil row function ) that easly applied on mutliple row , max , min, avg,s


use sakila;


select * from payment limit 10;

select count(amount) from payment where amount=2.99;


# group by a statement the collected the similer values and applyed on the , and make the group of the data 

# 
select amount,count(amount) from payment group by amount;


# jis bhi columns per group by applied on the colum th used thus 
# jis column per group by applied , get select the perticuler columns in the select


# har ek staff ne , kitne payment kye , and sum of there payment
select * from payment;

select  staff_id, count(amount), sum(amount) from payment group by staff_id;


# question another  har cumster kitna payment , have been done each custorm
select  customer_id, sum(amount) from payment group by customer_id;


# kye me data is filtered , can be used the 


select customer_id from payment where customer_id>3 group by customer_id;


# where conditon is first will run , we can filter that data is already present in your
# where can't run on the aggregate function.
#  group by with can applied with aggregated with the having 


# if normal where used without aggregated function can get the data , if agggrigate applied need to having


select customer_id, sum(amount) from payment where customer_id>3 group by customer_id;


# i need to get that particuler customer id , and the amount spand in the month of june , where the total payment  exied ruppes 50,


select customer_id, sum(amount), month(payment_date) from payment where month(payment_date)=6  group by  customer_id ;


# multi group by , har ek customer ne , kitna , payment spend kiya 

select customer_id , amount,  month(payment_date),count(amount) from payment group by customer_id , amount, month(payment_date);


# get the avg amount spanded in each month my the staff
select staff_id, month(payment_date) , avg(amount)from payment group by  month(payment_date);

-- assinment
-- diffrence between where and having clause
-- diffrence DISTINCT VS GROUP_BY diff .
-- what is sql, type of sql language

-- test upto group by 











