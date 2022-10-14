USE BakmiWM

USE master

-- 1. Simulasi ketika pelanggan baru ingin memesan souvenir
-- Pertama - tama pelanggan harus mendaftarkan diri terlebih dahulu

BEGIN TRAN

INSERT INTO Customer VALUES ('CU011', 'Thomas Miles', 'Male', '083572618263', 'thomas.miles.com', 'Jalan Otista no. 93')

ROLLBACK
COMMIT

-- Lalu ketika pelanggan telah mendaftarkan diri, pelanggan akan memilih souvenir, disini pelanggan akan memilih 3 item

SELECT * FROM Souvenir

BEGIN TRAN

INSERT INTO SouvenirTransaction VALUES ('ST017', 'SF008', 'CU011', '2021-12-31')

INSERT INTO SouvenirTranDetail VALUES 
('ST017', 'SO004', 4),
('ST017', 'SO002', 1)

ROLLBACK
COMMIT

-- 2. Simulasi ketika pelanggan yang sudah terdaftar ingin memesan Menu makanan

BEGIN TRAN

INSERT INTO MenuTransaction VALUES ('MT016', 'SF008', 'CU008', '2021-12-30')

INSERT INTO MenuTranDetail VALUES
('MT016', 'ME004', 4),
('MT016', 'ME010', 2),
('MT016', 'ME011', 3)

ROLLBACK
COMMIT

-- 3. Simulasi ketika staff ingin mengedit transaksi dari souvenir dikarenakan terjadi kesalahan input

UPDATE SouvenirTranDetail SET Qty = 3 WHERE SouvenirTranID LIKE 'ST016' AND SouvenirID LIKE 'SO002'

-- 4. Simulasi ketika ingin menghapus karyawan yang sebelum nya keluar
BEGIN TRAN

DELETE FROM Staff WHERE StaffID LIKE 'SF005'

ROLLBACK
COMMIT

-- 5. Simulasi ketika staff ingin mengupdate harga menu menjadi lebih mahal dikarenakan harga BBM naik

BEGIN TRAN

UPDATE Menu SET MenuPrice = 27000 WHERE MenuID LIKE 'ME001'

ROLLBACK
COMMIT