
-- ============================================
-- 06_UJI_HAK_AKSES.SQL
-- Pengujian hak akses setiap role
-- Schema: SALAM
-- ============================================


-- 1. UJI BACKEND_DEV
-- Hak akses: SELECT, INSERT, UPDATE, DELETE
-- Pengujian dilakukan melalui koneksi backend_dev

-- Melihat data mahasiswa
SELECT * FROM "SALAM".mahasiswas;

-- Menambahkan data pengujian
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('TEST131', 'Daniel Jaya Wijaya',
     'danilil234@gmail.com', 20, 'Informatika');

-- Mengubah data pengujian
UPDATE "SALAM".mahasiswas
SET nama = 'Daniel Jaya Wijaya Update'
WHERE nim = 'TEST131';

-- Menghapus data pengujian
DELETE FROM "SALAM".mahasiswas
WHERE nim = 'TEST131';


-- 2. UJI BI_DEV
-- Hak akses: SELECT saja
-- Pengujian dilakukan melalui koneksi bi_dev

-- Melihat data mahasiswa (seharusnya berhasil)
SELECT * FROM "SALAM".mahasiswas;

-- Menguji INSERT (seharusnya ditolak)
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('TESTBI131', 'Tes BI',
     'tes.bi131@example.com', 20, 'Informatika');

//Melihat data mahasiswa
SELECT * FROM "SALAM".mahasiswas;

//Menambahkan data pengujian
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('TEST131', 'Daniel Jaya Wijaya',
     'danilil234@gmail.com', 20, 'Informatika');

//Mengubah data pengujian
UPDATE "SALAM".mahasiswas
SET nama = 'Daniel Jaya Wijaya Update'
WHERE nim = 'TEST131';

//Menghapus data pengujian
DELETE FROM "SALAM".mahasiswas
WHERE nim = 'TEST131';

//Membuat tabel pengujian
CREATE TABLE "SALAM"."danil jaya" (
    id INT PRIMARY KEY,
    keterangan VARCHAR(100)
);

//Memeriksa tabel pengujian
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'SALAM'
  AND table_name = 'danil jaya';

//Menghapus tabel pengujian
DROP TABLE "SALAM"."danil jaya";
