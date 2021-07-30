CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	office_number NUMERIC(15),
	email VARCHAR(50)
);


CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number NUMERIC(15),
	address VARCHAR(100),
	billing VARCHAR(100)
);


CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	customer_id INTEGER,
	date_recieved DATE,
	date_returned DATE,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	vin_number VARCHAR(17),
	make VARCHAR(50),
	model VARCHAR(50),
	color VARCHAR(50),
	year_ NUMERIC(4),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


CREATE TABLE car_parts(
	parts_id SERIAL PRIMARY KEY,
	service_ticket_id INTEGER,
	part_number INTEGER,
	description VARCHAR(100),
	parts_price NUMERIC(8,2),
	FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);


CREATE TABLE sales(
	invoice_id SERIAL PRIMARY KEY,
	sale_date DATE,
	car_id INTEGER,
	customer_id INTEGER,
	salesperson_id INTEGER,
	price NUMERIC(8,2),
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);


CREATE TABLE labor_invoice(
	labor_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER,
	service_ticket_id INTEGER,
	parts_id INTEGER,
	hours NUMERIC(20),
	rate NUMERIC(5,2),
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id),
	FOREIGN KEY (parts_id) REFERENCES car_parts(parts_id)
);

