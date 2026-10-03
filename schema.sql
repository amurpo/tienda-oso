DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  description TEXT,
  price REAL NOT NULL,
  image_url TEXT
);

INSERT INTO products (name, description, price, image_url) VALUES
('Camiseta Básica', 'Camiseta 100% algodón orgánico', 15.99, 'https://via.placeholder.com/300x400?text=Camiseta'),
('Jeans Clásicos', 'Jeans de mezclilla azul corte recto', 39.90, 'https://via.placeholder.com/300x400?text=Jeans'),
('Chaqueta de Cuero', 'Chaqueta sintética negra', 59.90, 'https://via.placeholder.com/300x400?text=Chaqueta');
