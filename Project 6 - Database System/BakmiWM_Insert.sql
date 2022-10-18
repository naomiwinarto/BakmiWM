USE BakmiWM

INSERT INTO Position VALUES --7 data
('SP001', 'Chairman'),
('SP002', 'Director'),
('SP003', 'Assistant Manager'),
('SP004', 'Secretary'),
('SP005', 'Treasurer'),
('SP006', 'Accountant'),
('SP007', 'Cashier'),
('SP008', 'Chef'),
('SP009', 'Waiter'),
('SP010', 'Dishwasher')

INSERT INTO Staff VALUES --10 data
('SF001', 'Jason Drewson', 'Male', '1991-1-21', '081234567890', 'jason121@gmail.com', 'Jalan Anggrek no. 2', 25000000, 'SP001'),
('SF002', 'Angel Snow', 'Female', '1995-5-25', '081123458234', 'angelangel@gmail.com', 'Jalan Mawar no. 31', 15000000, 'SP002'),
('SF003', 'William Lee', 'Male', '1993-4-5', '089732476121', 'will345@gmail.com', 'Jalan Melati no. 45', 10000000, 'SP003'),
('SF004', 'Michelle Park', 'Female', '1996-7-8', '082734659237', 'chellechel@gmail.com', 'Jalan Tulip no. 24', 8000000, 'SP004'),
('SF005', 'Michael Kim', 'Male', '1999-9-9', '081734662384', 'michael999@gmail.com', 'Jalan Lily no. 63', 6000000, 'SP005'),
('SF006', 'Lili Lethia', 'Female', '2002-7-31', '082346782942', 'lili731@gmail.com', 'Jalan Bougenville no. 74', 3000000, 'SP008'),
('SF007', 'Lala Lawson', 'Female', '2000-3-20', '089723648236', 'lalalala20@gmail.com', 'Jalan Teratai no. 57', 5000000, 'SP006'),
('SF008', 'Dina Carlin', 'Female', '2001-2-3', '089673468456', 'dina1dina@gmail.com', 'Jalan Kamboja no. 123', 1500000, 'SP010'),
('SF009', 'Dani Carlin', 'Male', '2001-2-3', '081738492875', 'dani2dani@gmail.com', 'Jalan Kamboja no. 123', 2500000, 'SP007'),
('SF010', 'Dian Carlin', 'Female', '2001-2-3', '081244953957', 'dian3dian@gmail.com', 'Jalan Kamboja no. 123', 2000000, 'SP009')

INSERT INTO Customer VALUES --10 data
('CU001', 'Anna Martin', 'Female', '081732384283', 'annana@gmail.com', 'Jalan Anggur no. 85'),
('CU002', 'Sean Matthew', 'Male', '082347582949', 'seanm12@gmail.com', 'Jalan Jeruk no. 53'),
('CU003', 'Dita Karang', 'Female', '082164728374', 'ditabc@gmail.com', 'Jalan Merpati no. 73'),
('CU004', 'Elena Song', 'Female', '087384737482', 'elen4@gmail.com', 'Jalan Gagak no. 59'),
('CU005', 'Kevin Desmond', 'Male', '087766353434', 'kevinxx@gmail.com', 'Jalan Merak no. 22'),
('CU006', 'Lalisa Manoban', 'Female', '082238433432', 'lalalalisa@gmail.com', 'Jalan Rajawali no. 43'),
('CU007', 'Albedo Kreideprinz', 'Male', '089676523456', 'albedookr@gmail.com', 'Jalan Cendrawasih no. 6'),
('CU008', 'Joshua Hong', 'Male', '089283774482', 'joshushua@gmail.com', 'Jalan Kakaktua no. 2'),
('CU009', 'Clarin Maria', 'Female', '087846373736', 'clalalarin@gmail.com', 'Jalan Ahmad Yani no. 17'),
('CU010', 'Felix Lee', 'Male', '081123443225', 'lixfelix@gmail.com', 'Jalan Sultan Hasanuddin no. 105')

INSERT INTO Souvenir VALUES --10 data
('SO001', 'Sendok Garpu Travel Set', 15000, 20000),
('SO002', 'Sumpit Stainless Steel', 12000, 15000),
('SO003', 'Sumpit Kayu Premium', 20000, 25000),
('SO004', 'Sedotan Stainless Steel Pouch Set', 15000, 20000),
('SO005', 'Tumbler Kaca', 30000, 40000),
('SO006', 'Tumbler Termos', 40000, 50000),
('SO007', 'Totebag', 25000, 30000),
('SO008', 'Pouch Mini', 10000, 15000),
('SO009', 'Masker Kain', 8000, 10000),
('SO010', 'Scented Candle', 30000, 35000)

INSERT INTO SouvenirTransaction VALUES --16 data
('ST001', 'SF001', 'CU001', '2021-1-20'),
('ST002', 'SF002', 'CU002', '2021-2-2'),
('ST003', 'SF003', 'CU003', '2021-2-15'),
('ST004', 'SF004', 'CU004', '2021-3-4'),
('ST005', 'SF005', 'CU005', '2021-3-18'),
('ST006', 'SF006', 'CU006', '2021-4-9'),
('ST007', 'SF007', 'CU007', '2021-5-1'),
('ST008', 'SF008', 'CU008', '2021-5-31'),
('ST009', 'SF009', 'CU009', '2021-6-23'),
('ST010', 'SF010', 'CU010', '2021-7-3'),
('ST011', 'SF008', 'CU003', '2021-8-5'),
('ST012', 'SF007', 'CU009', '2021-8-26'),
('ST013', 'SF010', 'CU005', '2021-9-17'),
('ST014', 'SF005', 'CU001', '2021-10-22'),
('ST015', 'SF001', 'CU007', '2021-11-30'),
('ST016', 'SF004', 'CU006', '2021-12-31')

INSERT INTO SouvenirTranDetail VALUES --27 data
('ST001', 'SO001', 2),
('ST001', 'SO002', 3),
('ST002', 'SO004', 2),
('ST003', 'SO001', 2),
('ST004', 'SO003', 4),
('ST004', 'SO005', 2),
('ST005', 'SO006', 1),
('ST005', 'SO007', 2),
('ST006', 'SO008', 2),
('ST006', 'SO009', 5),
('ST007', 'SO010', 7),
('ST007', 'SO007', 6),
('ST008', 'SO005', 1),
('ST008', 'SO002', 2),
('ST009', 'SO003', 3),
('ST009', 'SO006', 2),
('ST010', 'SO010', 2),
('ST010', 'SO009', 5),
('ST011', 'SO004', 3),
('ST012', 'SO008', 6),
('ST013', 'SO004', 1),
('ST014', 'SO001', 3),
('ST015', 'SO004', 2),
('ST015', 'SO005', 2),
('ST015', 'SO007', 1),
('ST016', 'SO002', 1),
('ST016', 'SO008', 4)

INSERT INTO MenuCategory VALUES --4 data
('MC001', 'Food'),
('MC002', 'Dessert'),
('MC003', 'Beverage'),
('MC004', 'Topping')

INSERT INTO Menu VALUES --11 data
('ME001', 'Bakmi Ayam', 20000, 'MC001'),
('ME002', 'Nasi Goreng', 28000, 'MC001'),
('ME003', 'Mie Goreng', 22000, 'MC001'),
('ME004', 'Bakmi Ayam Spesial', 27000, 'MC001'),
('ME005', 'Telur', 3000, 'MC004'),
('ME006', 'Jamur', 8000, 'MC004'),
('ME007', 'Bakso', 5000, 'MC004'),
('ME008', 'Es Buah', 15000, 'MC002'),
('ME009', 'Air Mineral', 5000, 'MC003'),
('ME010', 'Teh Manis', 8000, 'MC003'),
('ME011', 'Teh Tawar', 8000, 'MC003')

INSERT INTO MenuTransaction VALUES --15 data
('MT001', 'SF001', 'CU001', '2021-1-11'),
('MT002', 'SF006', 'CU002', '2021-2-21'),
('MT003', 'SF007', 'CU003', '2021-2-25'),
('MT004', 'SF002', 'CU004', '2021-3-14'),
('MT005', 'SF003', 'CU005', '2021-3-31'),
('MT006', 'SF010', 'CU006', '2021-4-17'),
('MT007', 'SF009', 'CU007', '2021-4-23'),
('MT008', 'SF008', 'CU008', '2021-5-15'),
('MT009', 'SF007', 'CU009', '2021-6-7'),
('MT010', 'SF006', 'CU010', '2021-6-22'),
('MT011', 'SF005', 'CU006', '2021-7-19'),
('MT012', 'SF004', 'CU002', '2021-8-10'),
('MT013', 'SF003', 'CU009', '2021-9-18'),
('MT014', 'SF002', 'CU008', '2021-10-9'),
('MT015', 'SF001', 'CU003', '2021-11-27')

INSERT INTO MenuTranDetail VALUES --25 data
('MT001', 'ME001', 2),
('MT002', 'ME004', 2),
('MT002', 'ME005', 2),
('MT003', 'ME002', 3),
('MT004', 'ME003', 4),
('MT004', 'ME009', 4),
('MT005', 'ME003', 2),
('MT005', 'ME007', 1),
('MT006', 'ME001', 3),
('MT006', 'ME004', 4),
('MT006', 'ME008', 4),
('MT007', 'ME007', 3),
('MT008', 'ME002', 5),
('MT008', 'ME010', 6),
('MT009', 'ME003', 3),
('MT009', 'ME009', 3),
('MT010', 'ME001', 2),
('MT010', 'ME006', 2),
('MT011', 'ME001', 3),
('MT012', 'ME002', 2),
('MT013', 'ME003', 4),
('MT014', 'ME009', 5),
('MT015', 'ME001', 4),
('MT015', 'ME006', 3),
('MT015', 'ME010', 5)