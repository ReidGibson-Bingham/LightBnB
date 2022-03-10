
SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating) as average_rating
FROM property_reviews
JOIN properties ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY properties.cost_per_night DESC
LIMIT 10;





-- Show specific details about properties located in Vancouver including their average rating.

-- Select the id, title, cost_per_night, and an average_rating from the properties table for properties located in Vancouver.
-- Order the results from lowest cost_per_night to highest cost_per_night.
-- Limit the number of results to 10.
-- Only show listings that have a rating >= 4 stars.


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