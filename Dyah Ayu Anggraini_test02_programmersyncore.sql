/*Soal01*/
SELECT mst_member.*
FROM mst_member
INNER JOIN mst_kabupaten ON mst_member.id_kabupaten = mst_kabupaten.kode_kabupaten
INNER JOIN mst_propinsi ON mst_kabupaten.kode_propinsi = mst_propinsi.kode_propinsi
WHERE mst_propinsi.nama_propinsi = 'SUMATERA UTARA';

/*Soal02*/
SELECT mst_propinsi.*
FROM mst_propinsi
LEFT JOIN mst_kabupaten ON mst_propinsi.kode_propinsi = mst_kabupaten.kode_propinsi
LEFT JOIN mst_member ON mst_kabupaten.kode_kabupaten = mst_member.id_kabupaten
WHERE mst_member.id_propinsi IS NULL;

/*Soal03*/
SELECT mst_kabupaten.*
FROM mst_kabupaten
LEFT JOIN mst_member ON mst_kabupaten.kode_kabupaten = mst_member.id_kabupaten
WHERE mst_member.id_kabupaten IS NULL;

/*Soal04*/
SELECT mst_kecamatan.*
FROM mst_kecamatan
LEFT JOIN mst_member ON mst_kecamatan.kode_kecamatan = mst_member.id_kecamatan
WHERE mst_member.id_kecamatan IS NULL;

/*Soal05*/
SELECT mst_member.nama
FROM mst_member
INNER JOIN mst_kabupaten ON mst_member.id_kabupaten = mst_kabupaten.kode_kabupaten
WHERE mst_kabupaten.nama_kabupaten = 'KAB. SIMALUNGUN';

/*Soal06*/
SELECT mst_kabupaten.nama_kabupaten, COUNT(mst_instansi.kode_instansi) AS jumlah_instansi
FROM mst_kabupaten
LEFT JOIN mst_instansi ON mst_kabupaten.kode_kabupaten = mst_instansi.kode_kabupaten
WHERE mst_kabupaten.nama_kabupaten IN ('BIREUEN', 'KAB. BENER MERIAH')
GROUP BY mst_kabupaten.nama_kabupaten;

/*Soal07*/
SELECT *
FROM mst_member
WHERE nama LIKE 'M%';

/*Soal08*/
SELECT email
FROM mst_member
INNER JOIN mst_kabupaten ON mst_member.id_kabupaten = mst_kabupaten.kode_kabupaten
INNER JOIN mst_propinsi ON mst_kabupaten.kode_provinsi = mst_propinsi.kode_propinsi
WHERE email LIKE '%no%' AND mst_propinsi.nama_propinsi = 'SUMATERA UTARA';

/*Soal09*/
SELECT *
FROM mst_member
WHERE kode_instansi = '%2004';

/*Soal10*/
SELECT *
FROM mst_member
WHERE id_kecamatan LIKE '%.08.%';




