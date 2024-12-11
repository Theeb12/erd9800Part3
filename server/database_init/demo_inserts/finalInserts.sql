INSERT INTO airline VALUES ("JetBlue");

insert into airline_staff (username, password, first_name, last_name, date_of_birth, airline_name) values ('admin', 'abcd', 'Roe', 'Jones', '1978-05-25', 'JetBlue');
insert into airline_staff_email_address (email_address, username) values ('staff@nyu.edu', 'admin');
insert into airline_staff_phone_number (phone_number, username) values ('111-2222-3333', 'admin');
insert into airline_staff_phone_number (phone_number, username) values ('444-5555-6666', 'admin');

insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 4, 'Boeing', '2013-05-02', 11);
insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 4, 'Airbus', '2011-05-02', 13);
insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 50, 'Boeing', '2015-05-02', 9);

insert into maintanence (airline_name, airplane_id, start_date_time, end_date_time) values ('JetBlue', 1, 2025-01-27 13:25:25,  2025-01-29 07:25:25);
insert into maintanence (airline_name, airplane_id, start_date_time, end_date_time) values ('JetBlue', 2, 2025-01-27 13:25:25,  2025-01-29 07:25:25);

