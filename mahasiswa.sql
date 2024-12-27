CREATE TABLE IF NOT EXISTS mahasiswa (
    nim INT(6) UNIQUE PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    jurusan VARCHAR(50) NOT NULL,
    umur INT(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS mata_kuliah (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mata_kuliah VARCHAR(50) NOT NULL,
    nim INT(6),
    nilai INT(3) NOT NULL,
    dosen_pengajar VARCHAR(255) NOT NULL,
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim)
);

INSERT INTO mahasiswa (nim, nama, alamat, jurusan, umur) VALUES
(123456, 'Jogn', 'Jl. Merdeka no 1', 'Teknik Informatika', 21),
(234567, 'Alice', 'Jl. Gatot subroto', 'Sistem Informasi', 23),
(345678, 'Bob', 'Jl. Sudirman no 5', 'Teknik Informatika', 20),
(456789, 'Cindy', 'Jl. Pahlawan no 4', 'Manajemen', 22),
(567890, 'David', 'Jl. Diponegoro no 6', 'Teknik Elektro', 25),
(678901, 'Emily', 'Jl. Cendrawasih no 5', 'Manajemen', 24),
(789012, 'Frank', 'Jl. Ahmad Yani no 6', 'Teknik Informatika', 19);

INSERT INTO mata_kuliah (mata_kuliah, nim, nilai, dosen_pengajar) VALUES 
('Pemrogaman web', 123456, 85, 'Pak Budi'),
('Basis Data', 234567, 70, 'Ibu Ani'),
('Jaringan Komputer', 345678, 75, 'Pak Dodi'),
('Sistem Operasi', 123456, 90, 'Pak Budi'),
('MAnajemen Proyek', 456789, 80, 'Ibu Desi'),
('Bahasa Inggris', 567890, 85, 'Ibu Eka'),
('Statistika', 678901, 75, 'Pak Farhan'),
('Algoritma', 789012, 65, 'Pak Galih'),
('Pemrograman JAVA', 123456, 95, 'Pak Budi');
