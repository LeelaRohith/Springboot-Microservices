-- Reset category sequence
ALTER SEQUENCE category_seq RESTART WITH 1;
ALTER SEQUENCE product_seq RESTART WITH 1;

-- Insert categories
INSERT INTO category (id, description, name) VALUES
    (nextval('category_seq'), 'Mechanical and membrane keyboards for work and gaming.', 'Keyboards'),
    (nextval('category_seq'), 'High-resolution computer monitors for different uses.', 'Monitors'),
    (nextval('category_seq'), 'Various types of display screens for productivity and gaming.', 'Screens'),
    (nextval('category_seq'), 'Computer mice, including wired and wireless options.', 'Mice'),
    (nextval('category_seq'), 'Additional computer accessories for enhanced functionality.', 'Accessories');

-- Insert products for the 'Keyboards' category
INSERT INTO product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 12, 'RGB mechanical keyboard with customizable keys.', 'Pro RGB Keyboard', 109.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 18, 'Ultra-slim wireless keyboard with silent keys.', 'Slim Wireless Keyboard', 89.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 22, 'Compact gaming keyboard with anti-ghosting.', 'Mini Gaming Keyboard', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 28, 'Ergonomic keyboard with soft wrist support.', 'Comfort Ergo Keyboard', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 20, 'Mechanical keyboard with dedicated macro keys.', 'Macro Mechanical Keyboard', 119.99, (SELECT id FROM category WHERE name = 'Keyboards'));

-- Insert products for the 'Monitors' category
INSERT INTO product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 35, '32-inch 4K UHD monitor with HDR support.', '4K UHD Monitor', 429.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 20, '21-inch full HD monitor for office work.', 'FHD Office Monitor', 149.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 30, '34-inch curved ultra-wide gaming monitor.', 'Curved Ultra-Wide Monitor', 529.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, '27-inch IPS monitor with vibrant colors.', 'IPS Display Monitor', 319.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, 'Portable 15.6-inch USB-C monitor for laptops.', 'Portable Monitor', 219.99, (SELECT id FROM category WHERE name = 'Monitors'));

-- Insert products for the 'Screens' category
INSERT INTO product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 18, '55-inch OLED gaming display with high refresh rate.', 'OLED Gaming Display', 899.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 22, '24-inch touchscreen display with stylus support.', 'Touchscreen Display', 599.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, 'Ultra-thin LED display for professional work.', 'Ultra-Thin LED Display', 349.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 30, 'Curved 32-inch 1440p display for immersive viewing.', 'Curved 1440p Display', 499.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Short-throw projector with 4K resolution.', '4K Short-Throw Projector', 949.99, (SELECT id FROM category WHERE name = 'Screens'));

-- Insert products for the 'Mice' category
INSERT INTO product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 28, 'Wireless gaming mouse with high DPI sensor.', 'Pro Wireless Gaming Mouse', 79.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 35, 'Wired ergonomic mouse for long working hours.', 'Ergo Wired Mouse', 39.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 30, 'Ultra-lightweight gaming mouse with customizable buttons.', 'Lightweight Gaming Mouse', 69.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 20, 'Rechargeable travel mouse with Bluetooth connectivity.', 'Bluetooth Travel Mouse', 29.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 25, 'Vertical mouse for better wrist posture.', 'Vertical Ergonomic Mouse', 49.99, (SELECT id FROM category WHERE name = 'Mice'));

-- Insert products for the 'Accessories' category
INSERT INTO product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 18, 'Foldable laptop stand with cooling vents.', 'Foldable Laptop Stand', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 25, 'USB-C docking station with multiple ports.', 'USB-C Docking Station', 89.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'RGB backlit gaming headset stand.', 'RGB Headset Stand', 59.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 20, 'External solid-state drive enclosure.', 'SSD Enclosure', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 28, 'Ergonomic wrist rest pad for keyboards.', 'Ergonomic Wrist Rest', 19.99, (SELECT id FROM category WHERE name = 'Accessories'));

-- Verify inserted data
SELECT * FROM category;
SELECT * FROM product;
