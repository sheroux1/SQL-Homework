CREATE TABLE "customer" (
  "customer_id" SERIAL not null,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "Address" VARCHAR(50),
  "city" VARCHAR(25),
  "phone" NUMERIC(10,0),
  "email" VARCHAR(50),
  "cars_owned" INTEGER,
  "invoices" INTEGER,
  "cars_serviced" INTEGER,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "car" (
  "VIN" SERIAL not null,
  "sold_by" INTEGER,
  "owner_info" INTEGER,
  "service_history" INTEGER,
  "is_new" BOOLEAN,
  PRIMARY KEY ("VIN"),
  foreign key(owner_info) references customer(customer_id)
);
CREATE TABLE "salesperson" (
  "sales_id" SERIAL,
  "cars_sold" INTEGER,
  "invoice" INTEGER,
  PRIMARY KEY ("sales_id"),
  foreign key(cars_sold) references car("VIN")
);
CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "car_id" INTEGER,
  "owner_info" INTEGER,
  "sale_date" DATE,
  PRIMARY KEY ("invoice_id"),
  foreign key(owner_info) references customer("customer_id"),
  foreign key(car_id) references car("VIN")
);
CREATE TABLE "service_tickets" (
  "service_ticket_id" SERIAL,
  "owner_info" INTEGER,
  "car_info" INTEGER,
  "service_date" DATE,
  "service_description" VARCHAR(500),
  "mechanic_info" INTEGER,
  "need_parts" BOOLEAN,
  PRIMARY KEY ("service_ticket_id"),
  foreign key(owner_info) references customer("customer_id"),
  foreign key(car_info) references car("VIN"),
  foreign key(mechanic_info) references mechanic_info("mechanic_id")

);
CREATE TABLE "mechanic_info" (
  "mechanic_id" SERIAL,
  "mechanic_name" VARCHAR(100),
  PRIMARY KEY ("mechanic_id")
);
CREATE TABLE "service_history" (
  "car_info" SERIAL,
  "service_tickets" INTEGER,
  PRIMARY KEY ("car_info"),
  foreign key(service_tickets) references service_tickets("service_ticket_id") 
);






