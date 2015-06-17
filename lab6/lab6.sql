select * 
	from store
		order by Name;

select *
	from store
		order by Name
			limit 3;

select *
	from store
		order by Name DESC
			limit 3;

select * 
	from store
		where Price > 1;

select Id, Name, Qty*Price as "Extended Price"
	from store;

select SUM(Qty*Price) as "Total Cost"
	from store;

select COUNT(Id) as "Unique Items"
	from store;

select *
	from Course c
		inner join Dept d
			on c.deptId = d.Id
				where d.Name = 'CSC';

select SUM(count) as "Total Enrollment"
	from Enrollment;

select COUNT(Id) as "Total Classes"
	from Course;

select COUNT(Id) as "Total Departments"
	from Dept;

select c.Id, c.Name, d.Name as "Dept", c.deptId
	from Course c, Dept d
		where c.deptId = d.Id;

select CONCAT(d.Name, c.Name) as "Full Course Name"
	from Course c, Dept d;

select c.Id, c.Name, c.deptId, d.Name as "Dept", e.count as "Enrollment"
	from Course c
		inner join Dept d
			on d.Id = c.deptId
				inner join Enrollment e
					on c.Id = e.Id;
