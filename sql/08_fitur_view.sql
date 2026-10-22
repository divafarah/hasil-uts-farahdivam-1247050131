CREATE OR REPLACE VIEW "SALAM".view_mahasiswa_ringkas AS
SELECT nim, nama, jurusan
FROM "SALAM".mahasiswas;

//Pengujian VIEW
SELECT *
FROM "SALAM".view_mahasiswa_ringkas;