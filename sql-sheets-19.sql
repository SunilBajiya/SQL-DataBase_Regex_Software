use regex;

create table xyz(id int, name varchar(20));
insert into xyz values(10,'sunil'),(20,'ashika'),(30,'omi'),(50,'tushar'),(60,'ujjwal'),(70,'tushar');

explain select  * from xyz where name ='tushar';

-- this is more time taking assume the 1000 recode

-- index is the maction that is allow to extract the faster from my tables.alter
-- 2 types of indexing 
-- clustered  -- it is single , those inbuilt is primacy kye , predefied  keys called the clusterd index , like primary kye , forigen key, are the clustered index that is only single in tables

-- non clustered - 


-- id to make primary key

drop  table xyz;

create table xyz ( id int  primary key, name varchar(20));

insert into xyz values(10,'sunil'),(20,'ashika'),(30,'omi'),(50,'tushar'),(60,'ujjwal'),(70,'tushar');

explain select * from xyz where id =10;

-- clusterd index is by defalut

-- non clusted index self to make the index not depend on the primary key


create index index_name on xyz(name);


explain select * from xyz;

explain select  * from xyz where name ='ujjawal';

-- cartinilty is make the unique the values ,  

show indexes  from  xyz;

-- do one works 
-- remove the index
drop index index_name on  xyz;


-- make the two columsn name s






-- composite index make mroe then one columsn 

-- name and id both on make


create index index_name on xyz(id,name);
 show indexes from xyz;
 
 
explain select * from xyz where id=50 and  name='tushar'; -- why the recordes will , no work on the id , with the condition is used other wise , 

-- composite indexing in the make the all the columns make sure the perfectly . 

-- indexing is used for the rediblity  and insert in make the diffuclty, it is mostly used the make the faster and reabled the data 

-- those indexing is no clusted 


-- tempuray table - 

-- updatedable view , non updateable view,


-- i




