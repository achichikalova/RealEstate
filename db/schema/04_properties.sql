DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
CREATE TABLE properties (
id SERIAL PRIMARY KEY NOT NULL,
seller_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
type_id INTEGER REFERENCES properties_types(id) ON DELETE CASCADE,
type VARCHAR(255),
title VARCHAR (255) NOT NULL,
is_available BOOLEAN DEFAULT TRUE,
description VARCHAR(255),
photo_1 TEXT,
price BIGINT NOT NULL,
is_featured BOOLEAN DEFAULT TRUE
);
