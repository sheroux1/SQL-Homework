insert into customer(
	customer_id,
	first_name,
	last_name,
	"Address",
	city,
	phone,
	email,
	cars_owned,
	invoices,
	cars_serviced
) values (
	432141,
	'Steve',
	'Heroux',
	'123 Anywhere court',
	'Gurnee',
	8478675309,
	'something@nothing.net',
	3421,
	2353,
	8288
);

select * from customer;

insert into car(
	"VIN",
	sold_by,
	owner_info,
	service_history,
	is_new 
) values (
	7575,
	852852,
	432141,
	85756,
	true
)

select * from car;