
-- Uji PRIMARY KEY: NIM duplikat harus ditolak
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('1247050011', 'Mahasiswa Duplikat',
     'duplikat@example.com', 20, 'Teknik Informatika');

-- Uji UNIQUE: email duplikat harus ditolak
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('1247050999', 'Mahasiswa Uji Email',
     'ghevyraaaa@gmail.com', 20, 'Teknik Informatika');

-- Uji CHECK: umur di bawah 17 harus ditolak
INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, umur, jurusan)
VALUES
    ('1247050998', 'Danil Jaya Wijaya',
     'danil@example.com', 15, 'Teknik Informatika');