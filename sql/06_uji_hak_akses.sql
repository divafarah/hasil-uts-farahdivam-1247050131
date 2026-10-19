/* 1. UJI BACKEND_DEV: CRUD */

/* Jalankan menggunakan koneksi backend_dev */

SELECT * FROM "SALAM".mahasiswas;

INSERT INTO "SALAM".mahasiswas
(nim, nama, email, umur, jurusan)
VALUES
('TEST001', 'Mahasiswa Uji', 'test001@example.com', 20, 'Teknik Informatika');

UPDATE "SALAM".mahasiswas
SET nama = 'Mahasiswa Uji Updated'
WHERE nim = 'TEST001';

DELETE FROM "SALAM".mahasiswas
WHERE nim = 'TEST001';


/* 2. UJI BI_DEV: HANYA SELECT */

/* Jalankan menggunakan koneksi bi_dev */

SELECT * FROM "SALAM".mahasiswas;

/* Perintah INSERT berikut harus ditolak oleh PostgreSQL */
/*
INSERT INTO "SALAM".mahasiswas
(nim, nama, email, umur, jurusan)
VALUES
('TEST002', 'Uji BI', 'test002@example.com', 20, 'Teknik Informatika');
*/


/* 3. UJI DATA_ENGINEER: KELOLA DATA DAN OBJEK */

/* Jalankan menggunakan koneksi data_engineer */

INSERT INTO "SALAM".mahasiswas
(nim, nama, email, umur, jurusan)
VALUES
('TEST003', 'Mahasiswa Uji Engineer', 'test003@example.com', 20, 'Teknik Informatika');

UPDATE "SALAM".mahasiswas
SET nama = 'Mahasiswa Uji Engineer Updated'
WHERE nim = 'TEST003';

DELETE FROM "SALAM".mahasiswas
WHERE nim = 'TEST003';

CREATE TABLE "SALAM".uji_engineer (
    id INT PRIMARY KEY,
    keterangan VARCHAR(100)
);

DROP TABLE "SALAM".uji_engineer;