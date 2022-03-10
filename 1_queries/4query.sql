SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, AVG(property_reviews.rating) as average_rating
FROM property_reviews
JOIN properties ON properties.id = property_reviews.property_id
JOIN reservations ON reservations.id = property_reviews.reservation_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, properties.cost_per_night
ORDER BY reservations.start_date ASC
LIMIT 10;

-- Show all reservations for a user.

-- Select the reservation id, property title, reservation start_date, property cost_per_night and the average rating of the property. You'll need data from both the reservations and properties tables.
-- The reservations will be for a single user, so just use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- Limit the results to 10.



-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name VARCHAR(255) NOT NULL,
--   email VARCHAR(255) NOT NULL,
--   password VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE properties (
--   id SERIAL PRIMARY KEY NOT NULL,
--   owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,

--   title VARCHAR(255) NOT NULL,
--   description TEXT,
--   thumbnail_photo_url VARCHAR(255) NOT NULL,
--   cover_photo_url VARCHAR(255) NOT NULL,
--   cost_per_night INTEGER  NOT NULL DEFAULT 0,
--   parking_spaces INTEGER  NOT NULL DEFAULT 0,
--   number_of_bathrooms INTEGER  NOT NULL DEFAULT 0,
--   number_of_bedrooms INTEGER  NOT NULL DEFAULT 0,

--   country VARCHAR(255) NOT NULL,
--   street VARCHAR(255) NOT NULL,
--   city VARCHAR(255) NOT NULL,
--   province VARCHAR(255) NOT NULL,
--   post_code VARCHAR(255) NOT NULL,

--   active BOOLEAN NOT NULL DEFAULT TRUE
-- );


-- CREATE TABLE reservations (
--   id SERIAL PRIMARY KEY NOT NULL,
--   start_date DATE NOT NULL,
--   end_date DATE NOT NULL,
--   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
-- );

-- CREATE TABLE property_reviews (
--   id SERIAL PRIMARY KEY NOT NULL,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
--   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
--   rating SMALLINT NOT NULL DEFAULT 0,
--   message TEXT
-- );
