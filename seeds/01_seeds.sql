INSERT INTO users (name, email, password)
VALUES ('john', 'jogn@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('joe', 'joe@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('jordan', 'jordan@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES(1, 'nice place', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 500, 2, 3, 4, 'USA', 'JOhnathanST.', 'CAdana', 'MICHIGIN', 'VAS 3YT', TRUE),
(2, 'Beautiful place', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 234500, 5, 3, 2, 'CANADA', 'JOhnathanST.', 'CAdana', 'MICHIGIN', 'VA4 33T', TRUE),
(1, 'Mediocre House', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 3920500, 8, 12, 16, 'CANADA', 'JOhnathanST.', 'CAN', 'ALBERTA', 'VAS 3YT', TRUE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 1, 1),
('2013-09-13', '2018-09-23', 2, 2),
('2009-03-12', '2018-09-26', 3, 3);





INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 5, 'hello'),
(2, 2, 2, 3, 'test'),
(3, 3, 3, 4, 'test');




-- CREATE TABLE property_reviews (
--   id SERIAL PRIMARY KEY NOT NULL,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
--   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
--   rating SMALLINT NOT NULL DEFAULT 0,
--   message TEXT
-- );


-- $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.(password)

-- Create three or more rows in each table.
-- Get as creative as you want when inserting data.
-- Use the examples below if you want help coming up with entries.
-- For the text columns, don't worry about adding long descriptions or messages. Just use the word description or message.
-- Use the following string as every user's password (it's the word "password" hashed with bcrypt):

-- The following code block demonstrates how to insert multiple rows at once:

-- INSERT INTO reservations (start_date, end_date, property_id, guest_id)
-- VALUES ('2018-09-11', '2018-09-26', 1, 1),
-- ('2019-01-04', '2019-02-01', 2, 2),
-- ('2021-10-01', '2021-10-14', 3, 3);