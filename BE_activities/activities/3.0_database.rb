
def keep_me_hydrated(hour)
    a = hour * 0.5
    puts a.floor
end

keep_me_hydrated(3)
keep_me_hydrated(6.7)
keep_me_hydrated(11.8)

#================================================================================

create table students (id integer PRIMARY KEY, 
    first_name character varying (20) NOT NULL, 
    middle_name character varying (20) NOT NULL, 
    last_name character varying (20) NOT NULL, 
    age integer NOT NULL, 
    location character varying (100) NOT NULL);

insert into students (id, first_name, middle_name, last_name, age, location)
values 
(1, 'Juan', '', 'Cruz', 18, 'Manila')
(2, 'Anne', '', 'Wall', 20, 'Manila')
(3, 'Theresa', '', 'Joseph', 21, 'Manila')
(4, 'Issac', '', 'Gray', 19, 'Laguna')
(5, 'Zack', '', 'Matthews', 22, 'Marikina')
(6, 'Finn', '', 'Lam', 25, 'Manila')

update students set first_name:'Ivan' middle_name:'Ingram' last_name:'Howard' age:25 location:'Bulacan' where id = '3';

delete from students where id = (select max(id) As 'MaxID' from students);

#=======================================================================

select count (id) from students;

select * from students where location = 'Manila';

select AVG(age) from students;

select * from students order by age desc;