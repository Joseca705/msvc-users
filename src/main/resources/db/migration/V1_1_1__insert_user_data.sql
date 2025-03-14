INSERT INTO roles (role, description, created_at, created_by, status) VALUES 
('ADMIN', 'The admin can do everything.', now(), 0, 'ACTIVE'), 
('USER', 'Simple user.', now(), 0, 'ACTIVE');

INSERT INTO users (first_name, last_name, email, username, password, created_at, created_by, status) VALUES
('Jose', 'Calancha', 'josecalancha@gmail.com', 'josecalancha', '$2a$12$qUXlsdidL4TyMIrK7OE2t.t.Xcg51E6QivY5szXwqzjdtgdP/B2jS', now(), 0, 'ACTIVE'),
('Carlos', 'Pacheco', 'carlospacheco@gmail.com', 'carlospacheco', '$2a$12$qUXlsdidL4TyMIrK7OE2t.t.Xcg51E6QivY5szXwqzjdtgdP/B2jS', now(), 0, 'ACTIVE'),
('Juan', 'Perez', 'juanperez@gmail.com', 'juanperez', '$2a$12$qUXlsdidL4TyMIrK7OE2t.t.Xcg51E6QivY5szXwqzjdtgdP/B2jS', now(), 0, 'ACTIVE'),
('Ana', 'Gonzales', 'anagonzales@gmail.com', 'anagonzales', '$2a$12$qUXlsdidL4TyMIrK7OE2t.t.Xcg51E6QivY5szXwqzjdtgdP/B2jS', now(), 0, 'ACTIVE');

INSERT INTO user_role (role_id, user_id, created_at, created_by, status) VALUES
(1, 1, now(), 0, 'ACTIVE'),
(2, 1, now(), 0, 'ACTIVE'),
(1, 2, now(), 0, 'ACTIVE'),
(2, 2, now(), 0, 'ACTIVE'),
(2, 3, now(), 0, 'ACTIVE'),
(2, 4, now(), 0, 'ACTIVE');
