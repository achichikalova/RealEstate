DROP TABLE IF EXISTS messages CASCADE;
CREATE TABLE messages (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  content TEXT,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  is_for_admin BOOLEAN DEFAULT false
);
