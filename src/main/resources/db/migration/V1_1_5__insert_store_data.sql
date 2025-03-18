INSERT INTO products (name, code, sale_price, umbral_stock, created_at, created_by, status) VALUES
('YOGURT GRIEGO PIL', '3d475d448777edadce31ccb76fc376bca39abbdf177394deea19ebe8f83692d6', 7.50, 200, now(), 0, 'ACTIVE'),
('DULCE DE LECHE PIL', '26797d520b622994be42f2961931b4565b1d702bb30b84883b21fce4273d97c1', 16.50, 100, now(), 0, 'ACTIVE'),
('COCA COLA 4L', 'e5adcdce46e647a9cf1cfbe7f33b57fd6343827498326654ddcaa5307db06670', 16.90, 30, now(), 0, 'ACTIVE'),
('PATO AL HORNO', '870e5167b4ffa8514426d41a036a656cdaa391df1bafe893cffdcf59a841c132', 16.40, 25, now(), 0, 'ACTIVE'),
('TOMATES VERDES', 'f034b721fdadaa3bba14ebc832fb7f2b52e07481b66cc181ed4d794f8fca342e', 26.60, 40, now(), 0, 'ACTIVE'),
('CARNE DE RES-PALETA', 'ff625259b33ddccfd668d542a2f288865c3ea418614676070150d1056cb1f9d5', 36.80, 40, now(), 0, 'ACTIVE'),
('CARME DE RES-COSTILLA', 'b453758fb1be528b0fec9ff28c7423114ea70e92fd66faad725cd5022f340f70', 17.50, 50, now(), 0, 'ACTIVE'),
('ARROZ BLANCO', 'bca46babdbe9799ee8af227a64f1fbbbd34596e3b9c7ff36a72967441852e923', 11.60, 30, now(), 0, 'ACTIVE'),
('QUINTAL DE ARROCILLO', '60650c0f529f099ae82b30217b80547db725ba6179cb4d4bad9c5df6045b6724', 21.70, 10, now(), 0, 'ACTIVE'),
('MANZANAS VERDES', '9cabfcdb6cfa78bf980859967f6131094851bd99ba3c771e66698ba9520c28e3', 32.20, 70, now(), 0, 'ACTIVE'),
('MANZANAS ROJAS', 'c2b60c69b125ba169b3002207e78b22721106a2718d2c0d74db9d906bffec4e2', 51.50, 100, now(), 0, 'ACTIVE'),
('MANGO MARCA SOL', '2403a3df9c19325e2ca23194ce2514156826ef827f57041c0d29f3c532993519', 101.50, 20, now(), 0, 'ACTIVE'),
('SANDIA CUADRADA', '3faba2636047b70fa088f06fb383f82907121b6326b23f426fa97d51d75756c4', 21.00, 50, now(), 0, 'ACTIVE'),
('PAN INTEGRAL FABOCE', '3c148de61628146fb321d8d38d17792572998318578389958a685e95b4e94898', 11.00, 80, now(), 0, 'ACTIVE'),
('PAN DE TRIGO ESTRELLA', 'd17b80b397996c1b6be0968ea899ded19bc9e2701fb66c1f8eae04716bb0448f', 9.00, 90, now(), 0, 'ACTIVE'),
('JUGO TAMPICO DE 2L', '4a55584e8311ec230497a1a16d61f8f3d0595d1ebb17e594806689ac83d877f4', 7.00, 50, now(), 0, 'ACTIVE'),
('HELADO ARCOR DE CHOCOLATE', '44a0f2df7e36ef150ddeb30b0fb68932d476ec3f1ddf197e4d9aaac0af734e80', 3.80, 25, now(), 0, 'ACTIVE'),
('HELADO TENTACION', '1d1d2c685e55360a0db139649d522d888269a134aa12054aa613c926816eaac7', 5.20, 100, now(), 0, 'ACTIVE'),
('HELADO ARCOR FANTA', 'fbe196266d4690512552ecdad9f256c6c624b03f3f99ec6dfa5931c8c3996a4d', 16.10, 100, now(), 0, 'ACTIVE'),
('AGUA MANANTIAL MINERAL', '8a526b88ea3f043f7a65f6ae28e98a90c2b1051a382f7368f05ed5c301311458', 26.70, 100, now(), 0, 'ACTIVE'),
('PEPSI 4L', '25411af3ef9b7deea341d1d98c6cd875f2f8a141f437c7acfbd7c96ceaa0ab03', 33.40, 200, now(), 0, 'ACTIVE');

INSERT INTO providers (name, direction, email, phone, created_at, created_by, status) VALUES
('PIL S.A.', 'Av siempre viva 742', 'pil@pilsa.com', '2-222222', now(), 0, 'ACTIVE'),
('DELICIA S.A.', 'Av rodolfo 123', 'delicia@delicia.com', '2-222223', now(), 0, 'ACTIVE'),
('SOFIA S.A.', 'Av juan 456', 'sofia@sofia.com', '2-222232', now(), 0, 'ACTIVE'),
('COCA COLA COMPANY', 'Av jose 432', 'cocacola@cocacola.com', '2-222224', now(), 0, 'ACTIVE'),
('EMPRESAS FABOCE S.A.', 'Av luis 897', 'faboce@faboce.com', '2-222225', now(), 0, 'ACTIVE'),
('FRUTERIA SOL', 'Av juan 412', 'sol@fruteriasol.com', '2-222226', now(), 0, 'ACTIVE'),
('LA ESTRELLA S.A.', 'Av mario 984', 'estrella@estrella.com', '2-222227', now(), 0, 'ACTIVE'),
('LA CASCADA S.A.', 'Av ana 843', 'lacascada@cascada.com', '2-222228', now(), 0, 'ACTIVE'),
('INGENIO ARROCERO SOL S.A.', 'Av valeria 393', 'arrocerosol@sol.com', '2-222229', now(), 0, 'ACTIVE'),
('PEPSI S.A.', 'Av kevin 720', 'pepsi@pepsu.com', '2-222230', now(), 0, 'ACTIVE');

INSERT INTO batch_stock (initial_amount, acquisition_date, expiration_date, purchase_price, product_id, provider_id, created_at, created_by, status) VALUES
(300, now(), '2025/03/25', 6, 1, 1, now(), 0, 'ACTIVE'),
(150, now(), '2025/03/24', 16, 2, 1, now(), 0, 'ACTIVE'),
(250, now(), '2025/03/23', 15, 3, 4, now(), 0, 'ACTIVE'),
(120, now(), '2025/03/29', 15.50, 4, 3, now(), 0, 'ACTIVE'),
(220, now(), '2025/03/28', 26, 5, 6, now(), 0, 'ACTIVE'),
(180, now(), '2025/03/27', 36, 6, 3, now(), 0, 'ACTIVE'),
(200, now(), '2025/03/26', 15.20, 7, 3, now(), 0, 'ACTIVE'),
(140, now(), '2025/03/25', 11, 8, 9, now(), 0, 'ACTIVE'),
(200, now(), '2025/03/24', 21, 9, 9, now(), 0, 'ACTIVE'),
(120, now(), '2025/03/23', 30, 10, 6, now(), 0, 'ACTIVE'),
(240, now(), '2025/03/29', 51, 11, 6, now(), 0, 'ACTIVE'),
(300, now(), '2025/03/28', 100, 12, 6, now(), 0, 'ACTIVE'),
(280, now(), '2025/03/27', 22, 13, 6, now(), 0, 'ACTIVE'),
(180, now(), '2025/03/26', 12, 14, 5, now(), 0, 'ACTIVE'),
(200, now(), '2025/03/25', 10, 15, 7, now(), 0, 'ACTIVE'),
(300, now(), '2025/03/24', 8, 16, 4, now(), 0, 'ACTIVE'),
(200, now(), '2025/03/23', 4, 17, 2, now(), 0, 'ACTIVE'),
(300, now(), '2025/03/29', 5, 18, 2, now(), 0, 'ACTIVE'),
(300, now(), '2025/03/28', 15, 19, 4, now(), 0, 'ACTIVE'),
(200, now(), '2025/03/27', 26, 20, 8, now(), 0, 'ACTIVE'),
(300, now(), '2025/03/26', 33, 21, 10, now(), 0, 'ACTIVE');

INSERT INTO kardex (product_id, batch_id, created_at, movement_type, amount, balance_amount, unit_price, total_price, reference, reference_id, created_by, status) VALUES
(1, 1, now(), 'SALIDA', 300, 300, 6, 1800, 'Compra de...', 1, 1, 'ACTIVE' ),
(2, 2, now(), 'SALIDA', 150, 150, 16, 2400, 'Compra de...', 2, 1, 'ACTIVE' ),
(3, 3, now(), 'SALIDA', 250, 250, 15, 3750, 'Compra de...', 3, 1, 'ACTIVE' ),
(4, 4, now(), 'SALIDA', 120, 120, 15.50, 1860, 'Compra de...', 4, 1, 'ACTIVE' ),
(5, 5, now(), 'SALIDA', 220, 220, 26, 5720, 'Compra de...', 5, 1, 'ACTIVE' ),
(6, 6, now(), 'SALIDA', 180, 180, 36, 6480, 'Compra de...', 6, 1, 'ACTIVE' ),
(7, 7, now(), 'SALIDA', 200, 200, 15.20, 3040, 'Compra de...', 7, 1, 'ACTIVE' ),
(8, 8, now(), 'SALIDA', 140, 140, 11, 1540, 'Compra de...', 8, 1, 'ACTIVE' ),
(9, 9, now(), 'SALIDA', 200, 200, 21, 4200, 'Compra de...', 9, 1, 'ACTIVE' ),
(10, 10, now(), 'SALIDA', 120, 120, 30, 3600, 'Compra de...', 10, 1, 'ACTIVE' ),
(11, 11, now(), 'SALIDA', 240, 240, 51, 12240, 'Compra de...', 11, 1, 'ACTIVE' ),
(12, 12, now(), 'SALIDA', 300, 300, 100, 30000, 'Compra de...', 12, 1, 'ACTIVE' ),
(13, 13, now(), 'SALIDA', 280, 280, 22, 6160, 'Compra de...', 13, 1, 'ACTIVE' ),
(14, 14, now(), 'SALIDA', 180, 180, 12, 2160, 'Compra de...', 14, 1, 'ACTIVE' ),
(15, 15, now(), 'SALIDA', 200, 200, 10, 2000, 'Compra de...', 15, 1, 'ACTIVE' ),
(16, 16, now(), 'SALIDA', 300, 300, 8, 2400, 'Compra de...', 16, 1, 'ACTIVE' ),
(17, 17, now(), 'SALIDA', 200, 200, 4, 800, 'Compra de...', 17, 1, 'ACTIVE' ),
(18, 18, now(), 'SALIDA', 300, 300, 5, 1500, 'Compra de...', 18, 1, 'ACTIVE' ),
(19, 19, now(), 'SALIDA', 300, 300, 15, 4500, 'Compra de...', 19, 1, 'ACTIVE' ),
(20, 20, now(), 'ENTRADA', 200, 0, 26, 1, 'Venta de...', 1, 1, 'ACTIVE' ),
(21, 21, now(), 'ENTRADA', 300, 0, 33, 1, 'Venta de...', 2, 1, 'ACTIVE' );

INSERT INTO sales(sale_date, total, "comment", user_id, created_at, created_by, status) VALUES
(now(), 5340, 'Venta total', 1, now(), 1, 'ACTIVE'),
(now(), 10020, 'Venta total', 1, now(), 1, 'ACTIVE');

INSERT INTO sales_details (batch_id, product_id, sale_id, unit_sales_price, amount, subtotal, created_at, created_by, status) VALUES
(20, 20, 1, 27.70, 200, 5340, now(), 1, 'ACTIVE'),
(21, 21, 2, 33.40, 300, 10020, now(), 1, 'ACTIVE');
