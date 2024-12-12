INSERT INTO airline VALUES ("JetBlue");

insert into airline_staff (username, password, first_name, last_name, date_of_birth, airline_name) values ('admin', 'abcd', 'Roe', 'Jones', '1978-05-25', 'JetBlue');
insert into airline_staff_email_address (email_address, username) values ('staff@nyu.edu', 'admin');
insert into airline_staff_phone_number (phone_number, username) values ('111-2222-3333', 'admin');
insert into airline_staff_phone_number (phone_number, username) values ('444-5555-6666', 'admin');

insert into customer (email, first_name, last_name, password, building_number, street_name, apartment_number, city, state, zip_code, passport_number, passport_expiration, passport_country, date_of_birth) values ('testcustomer@nyu.edu', 'Jon', 'Snow', '$2a$12$/cIDQKi7s2ky1ELBFcPCxOcbiWijWCmtOsgUgzZVCJoKCv7k9sr.W', 1555, 'Jay St.', 233, 'Brooklyn', "New York", null, 54321, '2025-12-24', 'USA', '1999-12-19');
insert into customer_phone_number (email, phone_number) values ('testcustomer@nyu.edu', '123-4321-4321');
insert into customer (email, first_name, last_name, password, building_number, street_name, apartment_number, city, state, zip_code, passport_number, passport_expiration, passport_country, date_of_birth) values ('user1@nyu.edu', 'Alice', 'Bob', '$2a$12$/cIDQKi7s2ky1ELBFcPCxOcbiWijWCmtOsgUgzZVCJoKCv7k9sr.W', 5405, 'Jay Street', 233, 'Brooklyn', "New York", null, 54322, '2025-12-25', 'USA', '1999-11-19');
insert into customer_phone_number (email, phone_number) values ('user1@nyu.edu', '123-4322-4322');
insert into customer (email, first_name, last_name, password, building_number, street_name, apartment_number, city, state, zip_code, passport_number, passport_expiration, passport_country, date_of_birth) values ('user2@nyu.edu', 'Cathy', 'Wood', '$2a$12$/cIDQKi7s2ky1ELBFcPCxOcbiWijWCmtOsgUgzZVCJoKCv7k9sr.W', 1702, 'Jay Street', 233, 'Brooklyn', "New York", null, 54323, '2025-10-24', 'USA', '1999-10-19');
insert into customer_phone_number (email, phone_number) values ('user2@nyu.edu', '123-4323-4323');
insert into customer (email, first_name, last_name, password, building_number, street_name, apartment_number, city, state, zip_code, passport_number, passport_expiration, passport_country, date_of_birth) values ('user3@nyu.edu', 'Trudy', 'Jones', '$2a$12$/cIDQKi7s2ky1ELBFcPCxOcbiWijWCmtOsgUgzZVCJoKCv7k9sr.W', 1890, 'Jay Street', 233, 'Brooklyn', "New York", null, 54324, '2025-09-24', 'USA', '1999-09-19');
insert into customer_phone_number (email, phone_number) values ('user3@nyu.edu', '123-4324-4324');

insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 4, 'Boeing', '2013-05-02', 11);
insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 4, 'Airbus', '2011-05-02', 13);
insert into airplane (airline_name, seat_number, manufacturing_company, manufacturing_date, age) values ('JetBlue', 50, 'Boeing', '2015-05-02', 9);

insert into airport (code, name, city, country, airport_type) values ('JFK', 'JFK', 'NYC', 'USA', 'both');
insert into airport (code, name, city, country, airport_type) values ('BOS', 'BOS', 'Boston', 'USA', 'both');
insert into airport (code, name, city, country, airport_type) values ('PVG', 'PVG', 'Shanghai', 'China', 'both');
insert into airport (code, name, city, country, airport_type) values ('BEI', 'BEI', 'Beijing', 'China', 'both');
insert into airport (code, name, city, country, airport_type) values ('SFO', 'SFO', 'San Francisco', 'USA', 'both');
insert into airport (code, name, city, country, airport_type) values ('LAX', 'LAX', 'Los Angeles', 'USA', 'both');
insert into airport (code, name, city, country, airport_type) values ('HKA', 'HKA', 'Hong Kong', 'China', 'both');
insert into airport (code, name, city, country, airport_type) values ('SHEN', 'SHEN', 'Shenzhen', 'China', 'both');

insert into maintanence (airline_name, airplane_id, start_date_time, end_date_time) values ('JetBlue', 1, "2025-01-27 13:25:25", "2025-01-29 07:25:25");
insert into maintanence (airline_name, airplane_id, start_date_time, end_date_time) values ('JetBlue', 2, "2025-01-27 13:25:25", "2025-01-29 07:25:25");

insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 102, "SFO", "2024-09-20 13:25:25", "LAX", "2024-09-20 16:50:25", 300, "ontime", 3);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 104, "PVG", "2024-10-04 13:25:25", "BEI", "2024-10-04 16:50:25", 300, "ontime", 3);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 106, "SFO", "2024-08-04 13:25:25", "LAX", "2024-08-04 16:50:25", 350, "delayed", 3);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 206, "SFO", "2025-02-04 13:25:25", "LAX", "2025-02-04 16:50:25", 400, "ontime", 2);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 207, "LAX", "2025-03-04 13:25:25", "SFO", "2025-03-04 16:50:25", 300, "ontime", 2);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 134, "JFK", "2023-12-15 13:25:25", "BOS", "2023-12-15 16:50:25", 300, "delayed", 3);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 296, "PVG", "2024-12-30 13:25:25", "SFO", "2024-12-30 16:50:25", 3000, "ontime", 1);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 715, "PVG", "2024-09-28 10:25:25", "BEI", "2024-09-28 13:50:25", 500, "delayed", 1);
insert into flight (airline_name, flight_number, departure_airport_code, departure_date_time, arrival_airport_code, arrival_date_time, base_price, status, airplane_ID) values ("JetBlue", 839, "SHEN", "2023-12-26 13:25:25", "BEI", "2023-12-26 16:50:25", 300, "ontime", 3);



insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 102, "2024-09-20 13:25:25", "testcustomer@nyu.edu", "2024-08-17 11:55:55", 300, "credit", "1111-2222-3333-4444", "Test Customer 1", "2027-03-01", "Jon", "Snow", "1999-12-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 102, "2024-09-20 13:25:25", "user1@nyu.edu", "2024-08-16 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 1", "2027-03-01", "Alice", "Bob", "1999-11-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 102, "2024-09-20 13:25:25", "user2@nyu.edu", "2024-09-14 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 2", "2027-03-01", "Cathy", "Wood", "1999-10-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 104, "2024-10-04 13:25:25", "user1@nyu.edu", "2024-08-21 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 1", "2023-03-01", "Alice", "Bob", "1999-11-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 104, "2024-10-04 13:25:25", "testcustomer@nyu.edu", "2024-09-28 11:55:55", 300, "credit", "1111-2222-3333-4444", "Test Customer 1", "2027-03-01", "Jon", "Snow", "1999-12-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 106, "2024-08-04 13:25:25", "testcustomer@nyu.edu", "2024-08-02 11:55:55", 350, "credit", "1111-2222-3333-4444", "Test Customer 1", "2027-03-01", "Jon", "Snow", "1999-12-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 106, "2024-08-04 13:25:25", "user3@nyu.edu", "2024-07-23 11:55:55", 350, "credit", "1111-2222-3333-5555", "User 3", "2027-03-01", "Trudy", "Jones", "1999-09-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 839, "2023-12-26 13:25:25", "user3@nyu.edu", "2023-12-23 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 3", "2023-03-01", "Trudy", "Jones", "1999-09-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 102, "2024-09-20 13:25:25", "user3@nyu.edu", "2024-07-14 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 3", "2023-03-01", "Trudy", "Jones", "1999-09-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 134, "2023-12-15 13:25:25", "user3@nyu.edu", "2023-10-23 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 3", "2027-03-01", "Trudy", "Jones", "1999-09-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 715, "2024-09-28 10:25:25", "testcustomer@nyu.edu", "2024-05-02 11:55:55", 500, "credit", "1111-2222-3333-4444", "Test Customer 1", "2023-03-01", "Jon", "Snow", "1999-12-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 206, "2025-02-04 13:25:25", "user3@nyu.edu", "2024-11-20 11:55:55", 400, "credit", "1111-2222-3333-5555", "User 3", "2023-03-01", "Trudy", "Jones", "1999-09-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 206, "2025-02-04 13:25:25", "user1@nyu.edu", "2024-11-21 11:55:55", 400, "credit", "1111-2222-3333-5555", "User 1", "2023-03-01", "Alice", "Bob", "1999-11-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 206, "2025-02-04 13:25:25", "user2@nyu.edu", "2024-09-19 11:55:55", 400, "credit", "1111-2222-3333-5555", "User 2", "2023-03-01", "Cathy", "Wood", "1999-10-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 207, "2025-03-04 13:25:25", "user1@nyu.edu", "2024-08-15 11:55:55", 300, "credit", "1111-2222-3333-5555", "User 1", "2023-03-01", "Alice", "Bob", "1999-11-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 207, "2025-03-04 13:25:25", "testcustomer@nyu.edu", "2024-09-25 11:55:55", 300, "credit", "1111-2222-3333-4444", "Test Customer 1", "2023-03-01", "Jon", "Snow", "1999-12-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 296, "2024-12-30 13:25:25", "user1@nyu.edu", "2024-11-22 11:55:55", 3000, "credit", "1111-2222-3333-4444", "Test Customer 1", "2023-03-01", "Alice", "Bob", "1999-11-19");
insert into ticket (airline_name, flight_number, departure_date_time, email, purchased_date_time, calculated_price, card_type, card_number, card_name, expiration_date, first_name, last_name, date_of_birth) values ("JetBlue", 296, "2024-12-30 13:25:25", "testcustomer@nyu.edu", "2023-12-17 11:55:55", 3000, "credit", "1111-2222-3333-4444", "Test Customer 1", "2023-03-01", "Jon", "Snow", "1999-12-19");

insert into rate (email, airline_name, flight_number, departure_date_time, rating, comment) values ("testcustomer@nyu.edu", "JetBlue", 102, "2024-09-20 13:25:25", 4, "Very Comfortable");
insert into rate (email, airline_name, flight_number, departure_date_time, rating, comment) values ("user1@nyu.edu", "JetBlue", 102, "2024-09-20  13:25:25", 5, "Relaxing, check-in and onboarding very professional");
insert into rate (email, airline_name, flight_number, departure_date_time, rating, comment) values ("user2@nyu.edu", "JetBlue", 102, "2024-09-20 13:25:25", 3, "Satisfied and will use the same flight again");
insert into rate (email, airline_name, flight_number, departure_date_time, rating, comment) values ("testcustomer@nyu.edu", "JetBlue", 104, "2024-10-04 13:25:25", 1, "Customer Care services are not good");
insert into rate (email, airline_name, flight_number, departure_date_time, rating, comment) values ("user1@nyu.edu", "JetBlue", 104, "2024-10-04 13:25:25", 5, "Comfortable journey and Professional");