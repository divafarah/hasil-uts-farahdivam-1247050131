//Membuat schema
CREATE SCHEMA "SALAM";

//Membuat tabel mahasiswa
CREATE TABLE "SALAM".mahasiswas (
    nim VARCHAR(20) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    umur INT CHECK (umur >= 17),
    jurusan VARCHAR(100) NOT NULL
);

