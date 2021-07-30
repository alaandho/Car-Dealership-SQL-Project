INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name,
	office_number,
	email
)VALUES
	(101,
	'Dave',
	'Shin',
	111-222-3333,
	'daveshin@temple.com'),
	(102,
	'Aaron',
	'Abar',
	222-333-4444,
	'aaronabar@temple.com'),
	(103,
	'Richie',
	'Robles',
	333-444-5555,
	'richierob@temple.com');
	
	
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	phone_number,
	address
)VALUES
	(11,
	 'Sheena',
	 'Le',
	 666-777-8888,
	 '1111 First Ave, Brooklyn NY 91532'),
	(12,
	 'Milan',
	 'Tran',
	 888-999-1010,
	 '2222 Second Lane, Brooklyn NY 95031'),
	(13,
	 'Jimmea',
	 'Plum',
	  232-454-6767,
	 '3333 Third Ave, Brooklyn NY 75035'),
	 (14,
	 'Arnelle',
	 'Emilio',
	 353-444-8080,
	 '5555 Fifth St, Brooklyn NY 75045');


INSERT INTO service_ticket(
	service_ticket_id,
	car_id,
	customer_id,
	date_recieved,
	date_returned
)VALUES
	(01, 1001, 11, '2000-06-01', '2000-06-02'),
	(02, 1002, 12, '2000-06-03', '2000-06-04'),
	(03, 1003, 13, '2000-05-01', '2000-05-02'),
	(04, 1004, 14, '2000-05-03', '2000-05-03');
	
	
INSERT INTO car(
	car_id,
	customer_id,
	vin_number,
	make,
	model,
	color,
	year_
)VALUES
	(1001, 11, 'A00101', 'Honda', 'Accord', 'Green', 1981),
	(1002, 12, 'B00101', 'Suburu', 'Forester', 'White', 2005),
	(1003, 13, 'C00101', 'BMW', 'E30', 'Black', 1983),
	(1004, 14, 'D00101', 'Volvo', 'Sedan', 'Yellow', 1975);
	
	
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name
)VALUES
	(99,
	'Jim',
	'Jones'),
	(88,
	'Tom',
	'Thomson');
	
	
INSERT INTO car_parts(
	parts_id,
	service_ticket_id,
	part_number,
	description,
	parts_price
)VALUES
	(1, 01, 111, 'power steering pump', 75.00),
	(2, 02, 222, 'transmission', 110.00),
	(3, 03, 333, 'radiator', 80.00),
	(4, 04, 444, 'carburetor', 1200.00),
	(5, 01, 555, 'front bumper', 55.00);
	
	
*INSERT INTO sales(
	invoice_id,
	sale_date,
	car_id,
	customer_id,
	salesperson_id,
	price
)VALUES
	(001, 2000-01-18, 1001, 11, 101, 6500.00),
	(002, 2000-01-20, 1002, 12, 101, 8200.00),
	(003, 2000-01-24, 1003, 13, 102, 7000.00);
	
	
INSERT INTO labor_invoice(
	labor_id,
	mechanic_id,
	service_ticket_id,
	parts_id,
	hours,
	rate
)VALUES
	(50, 99, 01, 1, 3.00, 25.00),
	(51, 99, 02, 2, 4.25, 25.00),
	(52, 88, 03, 3, 2.00, 30.00),
	(53, 88, 04, 4, 1.00, 30.00);
	
	
	

	  

	
	
	