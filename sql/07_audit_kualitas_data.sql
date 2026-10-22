SELECT
    COUNT(*) AS total_mahasiswa,
    COUNT(*) FILTER (
        WHERE nim IS NULL OR TRIM(nim) = ''
    ) AS nim,
    COUNT(*) FILTER (
        WHERE nama IS NULL OR TRIM(nama) = ''
    ) AS nama,
    COUNT(*) FILTER (
        WHERE email IS NULL OR TRIM(email) = ''
    ) AS email,
    COUNT(*) FILTER (
        WHERE umur IS NULL OR umur < 17
    ) AS umur,
    COUNT(*) FILTER (
        WHERE jurusan IS NULL OR TRIM(jurusan) = ''
    ) AS jurusan
FROM "SALAM".mahasiswas;