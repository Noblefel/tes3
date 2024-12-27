-- 1. Update alamat mahasiswa dengan NIM '123456' menjadi 'Jl. Raya no 5'
UPDATE mahasiswa SET alamat = 'Jl. Raya no 5' WHERE nim = 123456;

-- 2. Tampilkan NIM, nama, dan jurusan dari mahasiswa yg memiliki jurusan 'Teknik Informatika', serta tampilkan juga nama dosen pembimbingnya
SELECT m.nim, m.nama, m.jurusan, mk.dosen_pengajar 
FROM mahasiswa m 
LEFT JOIN mata_kuliah mk ON mk.nim = m.nim 
WHERE m.jurusan = 'Teknik Informatika' 

-- 3. Tampilkan 5 nama mahasiswa dengn umur tertua
SElECT nim, nama, jurusan, umur FROM mahasiswa ORDER BY umur DESC LIMIT 5;

-- 4. Tampilkan nama mahasiswa, matkul yg diambil, dan nilai yg diperoleh setiap matkul. Hanya tampilkan data mahasiswa yg memiliki nilai lebih bagus dari 70
SELECT m.nama, mk.mata_kuliah, mk.nilai 
FROM mahasiswa m 
LEFT JOIN mata_kuliah mk ON mk.nim = m.nim 
WHERE mk.nilai > 70;