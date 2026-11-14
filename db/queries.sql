create database Kamaz;
use Kamaz;

SELECT table_name, table_rows FROM information_schema.tables
WHERE table_schema='kamaz';

SELECT u.id, u.full_name, r.name AS role 
FROM users u 
JOIN roles r ON r.id = u.role_id 
WHERE u.login = '94d5ous@gmail.com' AND u.password = 'uzWC67';

SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty, 
       p.description, p.photo, c.name AS category, m.name AS manufacturirs, s.name AS supplier 
FROM products p 
JOIN categories c ON c.id = p.category_id 
JOIN manufacturirs m ON m.id = p.manufacturer_id 
JOIN suppliers s ON s.id = p.supplier_id;

SELECT p.id, p.article, p.name, p.price, p.stock_qty, s.name AS supplier 
FROM products p 
JOIN suppliers s ON s.id = p.supplier_id 
WHERE p.name LIKE CONCAT('%', 'Туфли', '%') 
  AND p.supplier_id = 1 
ORDER BY p.stock_qty DESC;

SELECT id, name FROM categories;
SELECT id, name FROM manufacturirs;
SELECT id, name FROM suppliers;

INSERT INTO products 
(article, name, unit, price, discount, stock_qty, description, photo, category_id, manufacturer_id, supplier_id) 
VALUES 
('А112Т9', 'Ботинки', 'шт.', 4990, 3, 6, 'Женские Ботинки демисезонные kari', '1.jpg', 1, 1, 1);

SELECT * FROM products WHERE id = 1;

UPDATE products 
SET article='А112Т9', name='Ботинки', unit='шт.', price=5500, discount=3, stock_qty=6, 
    description='Женские Ботинки демисезонные kari', photo='1.jpg', 
    category_id=1, manufacturer_id=1, supplier_id=1 
WHERE article = 'А112Т9';

SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE product_id = 1;


