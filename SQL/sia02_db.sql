Create database sia02_db

USE sia02_db;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE admin (
  id_admin int NOT NULL,
  nama_admin varchar(30)  NOT NULL,
  email varchar(30)  NOT NULL,
  gambar varchar(255) DEFAULT NULL,
  alamat varchar(255) DEFAULT NULL,
  no_hp bigint DEFAULT NULL,
  PRIMARY KEY (id_admin),

)


/*Data for the table `admin` */

insert  into admin (id_admin,nama_admin, email, gambar, alamat,no_hp) values 
(3001,'Dedi','dedi@gmail','','Balige',628213456789),
(3002,'Evi','evi@gmail','','Balige',62811040602),
(3003,'Grace','grace@gmail','','Balige',6285689897070);


/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE guru (
  id_guru int NOT NULL,
  nama_guru varchar(30)  NOT NULL,
  email varchar(30)  NOT NULL,
  alamat varchar(255) DEFAULT NULL,
  jenis_kelamin varchar(15)  NOT NULL,
  agama varchar(15)  DEFAULT NULL,
  gambar varchar(255) DEFAULT NULL,
  no_hp bigint DEFAULT NULL,
  PRIMARY KEY (id_guru),
  
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guru` */

insert  into guru(id_guru,nama_guru,email,alamat,jenis_kelamin,agama,gambar,no_hp) values 
(4001,'Ana','ana@gmail','Balige','Perempuan','Kristen','',6282167676788),
(4002,'Budi','budi@gmail','Balige','Laki-laki','Kristen','',6282165675878),
(4003,'Coki','coki@gmail','Balige','Laki-laki','Kristen','',6282367578783),
(4004,'Rahmat','rahmat@gmail','Balige','Laki-laki','Kristen','',6282367573783),
(4005,'Sumirnah','sumirnah@gmail','Balige','Perempuan','Kristen','',6282367573703),
(4006,'Djoko','djoko@gmail','Balige','Laki-laki','Kristen','',6282367533703),
(4007,'Ahmad','ahmad@gmail','Balige','Laki-laki','Kristen','',6252367533703),
(4008,'Kaido','kaido@gmail','Balige','Laki-laki','Kristen','',6282369533703),
(4009,'Linlin','linlin@gmail','Balige','Perempuan','Kristen','',6287367533703),
(4010,'Irpan','irpan@gmail','Balige','Laki-laki','Kristen','',628986533703),
(4011,'Jack','jack@gmail','Balige','Laki-laki','Kristen','',6282362333703),
(4012,'Borsalino','borsalino@gmail','Balige','Laki-laki','Kristen','',6282367522703),
(4013,'Sakazuki','sakazuki@gmail','Balige','Laki-laki','Kristen','',6282309533703);

/*Table structure for table `guru_mata_pelajaran` */

DROP TABLE IF EXISTS `guru_mata_pelajaran`;

CREATE TABLE guru_mata_pelajaran (
  id int NOT NULL,
  guruid int NOT NULL,
  mata_pelajaran_kode int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (guruid) REFERENCES guru (id_guru),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel)
) 
ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `guru_mata_pelajaran` */

insert  into guru_mata_pelajaran(id,guruid,mata_pelajaran_kode) values 
(1,4001,1010),
(2,4001,1110),
(3,4001,1210),
(4,4001,2010),
(5,4001,2110),
(6,4001,2210),
(7,4002,1009),
(8,4002,1109),
(9,4002,1209),
(10,4002,2009),
(11,4002,2109),
(12,4002,2209),
(13,4003,1008),
(14,4003,1108),
(15,4003,1208),
(16,4003,2008),
(17,4003,2108),
(18,4003,2208),
(19,4004,1007),
(20,4004,1107),
(21,4004,1207),
(22,4004,2007),
(23,4004,2107),
(24,4004,2207),
(25,4005,1006),
(26,4005,1106),
(27,4005,2006),
(28,4005,2106),
(29,4005,2206),
(30,4006,1005),
(31,4006,1105),
(32,4006,2005),
(33,4006,2105),
(34,4006,2205),
(35,4007,1004),
(36,4007,1104),
(37,4007,1204),
(38,4007,2004),
(39,4007,2104),
(40,4007,2204),
(41,4008,1003),
(42,4008,1103),
(43,4008,1203),
(44,4009,1002),
(45,4009,1102),
(46,4009,1202),
(47,4010,1001),
(48,4010,1101),
(49,4010,1201),
(50,4011,2003),
(51,4011,2103),
(52,4011,2203),
(53,4012,2002),
(54,4012,2102),
(55,4012,2202),
(56,4013,2001),
(57,4013,2101),
(58,4013,2201);

/*Table structure for table `jurusan` */

DROP TABLE IF EXISTS `jurusan`;

CREATE TABLE jurusan (
  kode_jurusan int NOT NULL,
  jurusan varchar(15) NOT NULL,
  PRIMARY KEY (kode_jurusan)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jurusan` */

insert  into jurusan(kode_jurusan,jurusan) values 
(1000,'IPA'),
(2000,'IPS');

/*Table structure for table `jurusan_mata_pelajaran` */

DROP TABLE IF EXISTS `jurusan_mata_pelajaran`;

CREATE TABLE jurusan_mata_pelajaran (
  id int NOT NULL,
  jurusan_kode int NOT NULL,
  mata_pelajaran_kode int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (jurusan_kode) REFERENCES jurusan (kode_jurusan),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel)
) 
ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jurusan_mata_pelajaran` */

insert  into jurusan_mata_pelajaran(id,jurusan_kode,mata_pelajaran_kode) values 
(1,1000,1001),
(2,1000,1002),
(3,1000,1003),
(4,1000,1004),
(5,1000,1005),
(6,1000,1006),
(7,1000,1007),
(8,1000,1008),
(9,1000,1009),
(10,1000,1010),
(11,1000,1101),
(12,1000,1102),
(13,1000,1103),
(14,1000,1104),
(15,1000,1105),
(16,1000,1106),
(17,1000,1107),
(18,1000,1108),
(19,1000,1109),
(20,1000,1110),
(21,1000,1201),
(22,1000,1202),
(23,1000,1203),
(24,1000,1204),
(25,1000,1205),
(26,1000,1206),
(27,1000,1207),
(28,1000,1208),
(29,1000,1209),
(30,1000,1210),
(31,2000,2001),
(32,2000,2002),
(33,2000,2003),
(34,2000,2004),
(35,2000,2005),
(36,2000,2006),
(37,2000,2007),
(38,2000,2008),
(39,2000,2009),
(40,2000,2010),
(41,2000,2101),
(42,2000,2102),
(43,2000,2103),
(44,2000,2104),
(45,2000,2105),
(46,2000,2106),
(47,2000,2107),
(48,2000,2108),
(49,2000,2109),
(50,2000,2110),
(51,2000,2201),
(52,2000,2202),
(53,2000,2203),
(54,2000,2204),
(55,2000,2205),
(56,2000,2206),
(57,2000,2207),
(58,2000,2208),
(59,2000,2209),
(60,2000,2210);

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE kelas (
  id int NOT NULL,
  kategori_kelas varchar(255) NOT NULL,
  PRIMARY KEY (id),
) 
ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kelas` */

insert  into kelas(id,kategori_kelas) values 
(1,'X IA 1'),
(2,'X IA 2'),
(3,'X IA 3'),
(4,'X IA 4'),
(5,'X IS 1'),
(6,'X IS 2'),
(7,'X IS 3'),
(8,'X IS 4'),
(9,'X IS 5'),
(10,'XI IA 1'),
(11,'XI IA 2'),
(12,'XI IA 3'),
(13,'XI IA 4'),
(14,'XI IS 1'),
(15,'XI IS 2'),
(16,'XI IS 3'),
(17,'XI IS 4'),
(18,'XI IS 5'),
(19,'XII IA 1'),
(20,'XII IA 2'),
(21,'XII IA 3'),
(22,'XII IA 4'),
(23,'XII IS 1'),
(24,'XII IS 2'),
(25,'XII IS 3'),
(26,'XII IS 4'),
(27,'XII IS 5');

/*Table structure for table `kelas_mata_pelajaran` */

DROP TABLE IF EXISTS `kelas_mata_pelajaran`;

CREATE TABLE kelas_mata_pelajaran (
  id int NOT NULL,
  mata_pelajaran_kode int NOT NULL,
  kelasid int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (kelasid) REFERENCES kelas (id),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel)
) 
ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kelas_mata_pelajaran` */

insert  into kelas_mata_pelajaran(id,mata_pelajaran_kode,kelasid) values 
(1,1001,1),
(2,1002,1),
(3,1003,1),
(4,1004,1),
(5,1005,1),
(6,1006,1),
(7,1007,1),
(8,1008,1),
(9,1009,1),
(10,1010,1),
(11,2001,5),
(12,2002,5),
(13,2003,5),
(14,2004,5),
(15,2005,5),
(16,2006,5),
(17,2007,5),
(18,2008,5),
(19,2009,5),
(20,2010,5),
(21,1101,10),
(22,1102,10),
(23,1103,10),
(24,1104,10),
(25,1105,10),
(26,1106,10),
(27,1107,10),
(28,1108,10),
(29,1109,10),
(30,1110,10),
(31,2101,14),
(32,2102,14),
(33,2103,14),
(34,2104,14),
(35,2105,14),
(36,2106,14),
(37,2107,14),
(38,2108,14),
(39,2109,14),
(40,2110,14),
(41,1201,19),
(42,1202,19),
(43,1203,19),
(44,1204,19),
(45,1205,10),
(46,1207,19),
(47,1208,19),
(48,1209,19),
(49,1210,19),
(50,2201,23),
(51,2202,23),
(52,2203,23),
(53,2204,23),
(54,2205,23),
(55,2206,23),
(56,2207,23),
(57,2208,23),
(58,2209,23),
(59,2210,23);

/*Table structure for table `mata_pelajaran` */

DROP TABLE IF EXISTS `mata_pelajaran`;

CREATE TABLE mata_pelajaran (
  kode_mapel int NOT NULL,
  nama_mapel varchar(20) NOT NULL,
  semester_kode int NOT NULL,
  PRIMARY KEY (kode_mapel),
  FOREIGN KEY (semester_kode) REFERENCES semester (kode_semester)
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mata_pelajaran` */

insert  into mata_pelajaran(kode_mapel,nama_mapel,semester_kode) values 
(1001,'Biologi',8001),
(1002,'Fisika',8001),
(1003,'Kimia',8001),
(1004,'Matematika',8001),
(1005,'B.Indonesia',8001),
(1006,'B.Inggris',8001),
(1007,'Sejarah',8001),
(1008,'PKN',8001),
(1009,'Penjas',8001),
(1010,'Agama',8001),
(1011,'Biologi',8002),
(1012,'Fisika',8002),
(1013,'Kimia',8002),
(1014,'Matematika',8002),
(1015,'B.Indonesia',8002),
(1016,'B.Inggris',8002),
(1017,'Sejarah',8002),
(1018,'PKN',8002),
(1019,'Penjas',8002),
(1020,'Agama',8002),
(1101,'Biologi',8001),
(1102,'Fisika',8001),
(1103,'Kimia',8001),
(1104,'Matematika',8001),
(1105,'B.Indonesia',8001),
(1106,'B.Inggris',8001),
(1107,'Sejarah',8001),
(1108,'PKN',8001),
(1109,'Penjas',8001),
(1110,'Agama',8001),
(1111,'Biologi',8002),
(1112,'Fisika',8002),
(1113,'Kimia',8002),
(1114,'Matematika',8002),
(1115,'B.Indonesia',8002),
(1116,'B.Inggris',8002),
(1117,'Sejarah',8002),
(1118,'PKN',8002),
(1119,'Penjas',8002),
(1120,'Agama',8002),
(1201,'Biologi',8001),
(1202,'Fisika',8001),
(1203,'Kimia',8001),
(1204,'Matematika',8001),
(1205,'B.Indonesia',8001),
(1206,'B.Inggris',8001),
(1207,'Sejarah',8001),
(1208,'PKN',8001),
(1209,'Penjas',8001),
(1210,'Agama',8001),
(1211,'Biologi',8002),
(1212,'Fisika',8002),
(1213,'Kimia',8002),
(1214,'Matematika',8002),
(1215,'B.Indonesia',8002),
(1216,'B.Inggris',8002),
(1217,'Sejarah',8002),
(1218,'PKN',8002),
(1219,'Penjas',8002),
(1220,'Agama',8002),
(2001,'Ekonomi',8001),
(2002,'Sosiologi',8001),
(2003,'Geografi',8001),
(2004,'Matematika',8001),
(2005,'B.Indonesia',8001),
(2006,'B.Inggris',8001),
(2007,'Sejarah',8001),
(2008,'PKN',8001),
(2009,'Penjas',8001),
(2010,'Agama',8001),
(2011,'Ekonomi',8002),
(2012,'Sosiologi',8002),
(2013,'Geografi',8002),
(2014,'Matematika',8002),
(2015,'B.Indonesia',8002),
(2016,'B.Inggris',8002),
(2017,'Sejarah',8002),
(2018,'PKN',8002),
(2019,'Penjas',8002),
(2020,'Agama',8002),
(2101,'Ekonomi',8001),
(2102,'Sosiologi',8001),
(2103,'Geografi',8001),
(2104,'Matematika',8001),
(2105,'B.Indonesia',8001),
(2106,'B.Inggris',8001),
(2107,'Sejarah',8001),
(2108,'PKN',8001),
(2109,'Penjas',8001),
(2110,'Agama',8001),
(2111,'Ekonomi',8002),
(2112,'Sosiologi',8002),
(2113,'Geografi',8002),
(2114,'Matematika',8002),
(2115,'B.Indonesia',8002),
(2116,'B.Inggris',8002),
(2117,'Sejarah',8002),
(2118,'PKN',8002),
(2119,'Penjas',8002),
(2120,'Agama',8002),
(2201,'Ekonomi',8001),
(2202,'Sosiologi',8001),
(2203,'Geografi',8001),
(2204,'Matematika',8001),
(2205,'B.Indonesia',8001),
(2206,'B.Inggris',8001),
(2207,'Sejarah',8001),
(2208,'PKN',8001),
(2209,'Penjas',8001),
(2210,'Agama',8001),
(2211,'Ekonomi',8002),
(2212,'Sosiologi',8002),
(2213,'Geografi',8002),
(2214,'Matematika',8002),
(2215,'B.Indonesia',8002),
(2216,'B.Inggris',8002),
(2217,'Sejarah',8002),
(2218,'PKN',8002),
(2219,'Penjas',8002),
(2220,'Agama',8002);

/*Table structure for table `materi_pembelajaran` */

DROP TABLE IF EXISTS `materi_pembelajaran`;

CREATE TABLE materi_pembelajaran (
  id int NOT NULL,
  judul varchar(50) NOT NULL,
  tanggal date NOT NULL,
  deskripsi text  NOT NULL,
  filename varchar(255) DEFAULT NULL,
  filepath varchar(255) DEFAULT NULL,
  mata_pelajaran_kode int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel)
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


insert into materi_pembelajaran(id, judul, tanggal, deskripsi, filename, filepath, mata_pelajaran_kode) values
(1, 'Biologi Kelas X', '2021-01-12', 'SISTEM PERNAPASAN MANUSIA', 'SISTEM PERNAPASAN', NULL, 1001),
(2, 'Biologi Kelas X', '2021-01-13', 'SISTEM PERNAPASAN MANUSIA', 'SISTEM PERNAPASAN', NULL, 1101),
(3, 'Biologi Kelas XI', '2021-01-15', 'SISTEM PERNAPASAN MANUSIA', 'SISTEM PERNAPASAN', NULL, 1111),
(4, 'Fisika Kelas X', '2021-01-20', 'Hukum Newton', 'Hukum Newton', NULL, 1002),
(5, 'Kimia Kelas X', '2021-01-17', 'Unsur periodik', 'Unsur Periodik', NULL, 1003),
(6, 'Matematika Kelas X', '2021-01-21', 'Logika Matematika', 'Logika Matematika', NULL, 1004),
(7, 'Bahasa Indonesia Kelas X', '2021-01-13', 'Pantun Indonesia', 'Pantun Indonesia', NULL, 1005),
(8, 'Pendidikan Kewarganegaraan Kelas X', '2021-01-19', 'Lahirnya Pancasila', 'Lahirnya Pancasila', NULL, 1008),
(9, 'Bahasa Inggris Kelas X', '2021-01-12', 'TOELF 1', 'TOELF 2', NULL, 1006),
(10, 'Sejarah Kelas X', '2021-01-22', 'Perang Dunia I', 'Perang Dunia I', NULL, 1007),
(11, 'Penjas Kelas X', '2021-01-12', 'Permainan Voli', 'Permainan Voli', NULL, 1009),
(12, 'Agama Kelas X', '2021-01-21', 'Pendidikan Kristen', 'Pendidikan Kristen', NULL, 1010),
(13, 'Fisika Kelas X', '2021-02-12', 'Termodinamika', 'Termodinamika', NULL, 1012),
(14, 'Kimia Kelas X', '2021-02-10', 'Molekul Gas', 'Molekul Gas', NULL, 1013),
(15, 'Matematika Kelas X', '2021-02-13', 'Trigonometri', 'Trigonometri', NULL, 1014),
(16, 'Bahasa Indonesia Kelas X', '2021-04-12', 'Karya Ilmiah', 'Karya Ilmiah', NULL, 1015),
(17, 'Bahasa Inggris Kelas X', '2021-03-12', 'TOELF 2', 'TOELF 2', NULL, 1016),
(18, 'Sejarah Kelas X', '2021-03-23', 'Perang Dunia II', 'Perang Dunia II', NULL, 1017),
(19, 'PKn Kelas X', '2021-01-12', 'Peristiwa Rengasdengklok', 'Peristiwa Rengasdengklok', NULL, 1017),
(20, 'Penjas Kelas X', '2021-01-12', 'Permainan Basket', 'Permainan BAsket', NULL, 1019),
(21, 'Agama Kelas XI', '2021-01-12', 'Iman Rasuli', 'Iman Rasuli', NULL, 1020),
(22, 'Fisika Kelas XI', '2021-04-24', 'Hukum Pascal', 'Hukum Pascal', NULL, 1102),
(23, 'Kimia Kelas XI', '2021-04-12', 'Kimia', 'Kimia', NULL, 1103),
(24, 'Matematika Kelas XI', '2021-04-13', 'Difrensial', 'difrensial', NULL, 1104),
(25, 'Bahasa Indonesia Kelas XI', '2021-03-12', 'Puisi Lama', 'Puisi Lama', NULL, 1105),
(26, 'Bahasa Inggris Kelas XI', '2021-01-12', 'TOELF 3', 'TOELF 3', NULL, 1106),
(27, 'Sejarah Kelas XI', '2021-11-12', 'BPUPKI', 'BPUPKI', NULL, 1107),
(28, 'PKn Kelas XI', '2021-10-12', 'Kesaktian Pancasila', 'Kesaktian Pancasila', NULL, 1108),
(29, 'Penjas Kelas XI', '2021-09-23', 'Permainan Sepak Bola', 'Permainan Sepak Bola', NULL, 1109),
(30, 'Agama Kelas XI', '2021-08-23', 'Titah', 'Titah', NULL, 1110);

/*Data for the table `materi_pembelajaran` */


/*Table structure for table `pengumuman` */ 

DROP TABLE IF EXISTS `pengumuman`;

CREATE TABLE pengumuman (
  id int NOT NULL ,
  judul varchar(50) NOT NULL,
  tanggal date NOT NULL,
  konten text  NOT NULL,
  filename varchar(255)  DEFAULT NULL,
  filepath varchar(255) DEFAULT NULL,
  guruid int DEFAULT NULL,
  adminid int DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (adminid) REFERENCES admiN (id_admin),
  FOREIGN KEY (guruid) REFERENCES guru (id_guru)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pengumuman` */

/*Table structure for table `semester` */

DROP TABLE IF EXISTS `semester`;

CREATE TABLE semester (
  kode_semester int NOT NULL,
  semester varchar(10)NOT NULL,
  tahun_ajaran varchar(10)  NOT NULL,
  PRIMARY KEY (kode_semester)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `semester` */

insert  into semester(kode_semester,semester,tahun_ajaran) values 
(8001,'Ganjil','2020/2021'),
(8002,'Genap','2020/2021'),
(8003,'Ganjil','2021/2022'),
(8004,'Genap','2021/2022');

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE siswa(
  nis char(4) NOT NULL,
  nama_siswa varchar(30) NOT NULL,
  email varchar(30)  NOT NULL,
  gambar varchar(255) DEFAULT NULL,
  alamat varchar(255)  DEFAULT NULL,
  no_hp bigint DEFAULT NULL,
  jenis_kelamin varchar(15)  NOT NULL,
  agama varchar(15)  DEFAULT NULL,
  PRIMARY KEY (nis),
  
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `siswa` */

insert  into siswa(nis,nama_siswa,email,gambar,alamat,no_hp,jenis_kelamin,agama) values 
('1033','Iren','iren@gmail.com','','Balige',6282188765544,'pr','Kristen'),
('1011','Indah','indah@gmail.com','','Balige',6282188765522,'pr','Islam'),
('1022','Dian','dian@gmail.com','','Laguboti',6282189065544,'lk','Kristen'),
('1044','Ifan','ifan@gmail.com','','Balige',6282188765887,'lk','Kristen'),
('1041','Budi','budi@gmail.com','','Laguboti',6282188002544,'lk','Kristen'),
('1031','Nina','nina@gmail.com','','Balige',6282189890768,'pr','Kristen'),
('1032','Ani','ani@gmail.com','','Porsea',6282187654534,'pr','Islam'),
('1023','Andi','andi@gmail.com','','Laguboti',6282190765544,'lk','Kristen'),
('1025','Nia','nia@gmail.com','','Balige',62821887221137,'pr','Kristen'),
('1042','Santi','santi@gmail.com','','Laguboti',6282288997766,'pr','Kristen'),
('1034','Novi','novi@gmail.com','','Balige',6282199885544,'pr','Kristen'),
('1024','Abdul','abdul@gmail.com','','Porsea',6282185453323,'lk','Islam'),
('1043','Asri','asri@gmail.com','','Laguboti',6282190765566,'pr','Kristen'),
('1045','Surti','surti@gmail.com','','Balige',62821887221100,'pr','Kristen'),
('1040','Luki','luki@gmail.com','','Laguboti',6282288997887,'lk','Kristen'),
('1055','caca','caca@gmail.com','','Balige',8111111111,'pr','Kristen'),
('1067','Nadya','nadya@gmail.com','','Balige',6282189980887,'pr','Kristen'),
('1120','Aldi','aldi@gmail.com','','Laguboti',6282167675544,'lk','Islam'),
('1155','Nina','nina@gmail.com','','Laguboti',6282167970099,'pr','Kristen'),
('1220','Ria','ria@gmail.com','','Balige',6282167009876,'pr','Islam'),
('1266','Andi','andi@gmail.com','','Laguboti',6282167907766,'lk','Kristen');

/*Table structure for table `siswa_mata_pelajaran` */

DROP TABLE IF EXISTS `siswa_mata_pelajaran`;

CREATE TABLE siswa_mata_pelajaran (
  id int NOT NULL,
  siswanis char(4) NOT NULL,
  mata_pelajaran_kode int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel),
  FOREIGN KEY (siswanis) REFERENCES siswa (nis)
) 
ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `siswa_mata_pelajaran` */

insert  into siswa_mata_pelajaran(id,siswanis, mata_pelajaran_kode) values 
(1,'1033',1001),
(2,'1033',1002),
(3,'1033',1003),
(4,'1033',1004),
(5,'1033',1005),
(6,'1033',1006),
(7,'1033',1007),
(8,'1033',1008),
(9,'1033',1009),
(10,'1033',1010),
(11,'1067',2001),
(12,'1067',2002),
(13,'1067',2003),
(14,'1067',2004),
(15,'1067',2005),
(16,'1067',2006),
(17,'1067',2007),
(18,'1067',2008),
(19,'1067',2009),
(20,'1067',2010),
(21,'1120',1101),
(22,'1120',1102),
(23,'1120',1103),
(24,'1120',1104),
(25,'1120',1105),
(26,'1120',1106),
(27,'1120',1107),
(28,'1120',1108),
(29,'1120',1109),
(30,'1120',1110),
(31,'1155',2101),
(32,'1155',2102),
(33,'1155',2103),
(34,'1155',2104),
(35,'1155',2105),
(36,'1155',2106),
(37,'1155',2107),
(38,'1155',2108),
(39,'1155',2109),
(40,'1155',2110),
(41,'1220',1201),
(42,'1220',1202),
(43,'1220',1203),
(44,'1220',1204),
(45,'1220',1206),
(46,'1220',1207),
(47,'1220',1208),
(48,'1220',1209),
(49,'1220',1210),
(50,'1266',2201),
(51,'1266',2202),
(52,'1266',2203),
(53,'1266',2204),
(54,'1266',2205),
(55,'1266',2206),
(56,'1266',2207),
(57,'1266',2208),
(58,'1266',2209),
(59,'1266',2210),
(60,'1011',1001),
(61,'1011',1002),
(62,'1011',1003),
(63,'1011',1004),
(64,'1011',1005),
(65,'1011',1006),
(66,'1011',1007),
(67,'1011',1008),
(68,'1011',1009),
(69,'1011',1010),
(70,'1022',1001),
(71,'1022',1002),
(72,'1022',1003),
(73,'1022',1004),
(74,'1022',1005),
(75,'1022',1006),
(76,'1022',1007),
(77,'1022',1008),
(78,'1022',1009),
(79,'1022',1010),
(80,'1044',1001),
(81,'1044',1002),
(82,'1044',1003),
(83,'1044',1004),
(84,'1044',1005),
(85,'1044',1006),
(86,'1044',1007),
(87,'1044',1008),
(88,'1044',1009),
(89,'1044',1010),
(90,'1041',1001),
(91,'1041',1002),
(92,'1041',1003),
(93,'1041',1004),
(94,'1041',1005),
(95,'1041',1006),
(96,'1041',1007),
(97,'1041',1008),
(98,'1041',1009),
(99,'1041',1010),
(100,'1031',1001),
(101,'1031',1002),
(102,'1031',1003),
(103,'1031',1004),
(104,'1031',1005),
(105,'1031',1006),
(106,'1031',1007),
(107,'1031',1008),
(108,'1031',1009),
(109,'1031',1010),
(110,'1032',1001),
(111,'1032',1002),
(112,'1032',1003),
(113,'1032',1004),
(114,'1032',1005),
(115,'1032',1006),
(116,'1032',1007),
(117,'1032',1008),
(118,'1032',1009),
(119,'1032',1010),
(120,'1023',1001),
(121,'1023',1002),
(122,'1023',1003),
(123,'1023',1004),
(124,'1023',1005),
(125,'1023',1006),
(126,'1023',1007),
(127,'1023',1008),
(128,'1023',1009),
(129,'1023',1010),
(130,'1025',1001),
(131,'1025',1002),
(132,'1025',1003),
(133,'1025',1004),
(134,'1025',1005),
(135,'1025',1006),
(136,'1025',1007),
(137,'1025',1008),
(138,'1025',1009),
(139,'1025',1010),
(140,'1042',1001),
(141,'1042',1002),
(142,'1042',1003),
(143,'1042',1004),
(144,'1042',1005),
(145,'1042',1006),
(146,'1042',1007),
(147,'1042',1008),
(148,'1042',1009),
(149,'1042',1010),
(150,'1034',1001),
(151,'1034',1002),
(152,'1034',1003),
(153,'1034',1004),
(154,'1034',1005),
(155,'1034',1006),
(156,'1034',1007),
(157,'1034',1008),
(158,'1034',1009),
(159,'1034',1010),
(160,'1024',1001),
(161,'1024',1002),
(162,'1024',1003),
(163,'1024',1004),
(164,'1024',1005),
(165,'1024',1006),
(166,'1024',1007),
(167,'1024',1008),
(168,'1024',1009),
(169,'1024',1010),
(170,'1043',1001),
(171,'1043',1002),
(172,'1043',1003),
(173,'1043',1004),
(174,'1043',1005),
(175,'1043',1006),
(176,'1043',1007),
(177,'1043',1008),
(178,'1043',1009),
(179,'1043',1010),
(180,'1045',1001),
(181,'1045',1002),
(182,'1045',1003),
(183,'1045',1004),
(184,'1045',1005),
(185,'1045',1006),
(186,'1045',1007),
(187,'1045',1008),
(188,'1045',1009),
(189,'1045',1010),
(190,'1040',1001),
(191,'1040',1002),
(192,'1040',1003),
(193,'1040',1004),
(194,'1040',1005),
(195,'1040',1006),
(196,'1040',1007),
(197,'1040',1008),
(198,'1040',1009),
(199,'1040',1010);

/*Table structure for table `submissions` */

DROP TABLE IF EXISTS submissions;

CREATE TABLE submissions (
  id int NOT NULL,
  tanggal_kumpul date NOT NULL,
  nilai int DEFAULT NULL,
  filename varchar(255) NULL,
  filepath varchar(255) DEFAULT NULL,
  tugasid int DEFAULT NULL,
  siswanis char(4) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (tugasid) REFERENCES tugas (id),
  FOREIGN KEY (siswanis) REFERENCES siswa (nis)
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `submissions` */

insert  into submissions(id,tanggal_kumpul, nilai, tugasid, siswanis) values 
(1,'04-05-2020', 70, 1, 1033),
(2,'04-05-2020', 70, 1, 1011),
(3,'04-05-2020', 70, 1, 1022),
(4,'04-05-2020', 70, 1, 1041),
(5,'04-05-2020', 80, 1, 1032),
(6,'04-05-2020', 80, 1, 1034),
(7,'04-05-2020', 80, 1, 1045),
(8,'04-05-2020', 80, 1, 1024),
(9,'04-05-2020', 80, 1, 1041),
(10,'12-05-2020', 80, 4, 1022),
(11,'12-05-2020', 100, 4, 1033),
(12,'12-05-2020', 67, 4, 1023),
(13,'12-05-2020', 90, 4, 1045),
(14,'12-05-2020', 80, 4, 1031),
(15,'12-05-2020', 84, 4, 1011),
(16,'12-05-2020', 100, 4, 1043),
(17,'12-05-2020', 100, 4, 1040),
(18,'12-05-2020', 100, 4, 1041),
(19,'12-05-2020', 89, 4, 1025),
(20,'12-05-2020', 99, 4, 1024),
(21,'12-05-2020', 80, 4, 1044),
(22,'12-05-2020', 80, 5, 1033),
(23,'04-05-2020', 90, 5, 1011),
(24,'04-05-2020', 99, 5, 1022),
(25,'04-05-2020', 100, 5, 1044),
(26,'04-05-2020', 100, 5, 1041),
(27,'04-05-2020', 67, 5, 1031),
(28,'04-05-2020', 50, 5, 1032),
(29,'04-05-2020', 77, 5, 1023),
(30,'04-05-2020', 87, 5, 1025),
(31,'04-05-2020', 87, 5, 1042),
(32,'04-05-2020', 97, 5, 1024),
(33,'04-05-2020', 100, 5, 1043),
(34,'04-05-2020', 66, 5, 1045),
(35,'04-05-2020', 86, 5, 1040),
(36,'04-05-2020', 45, 5, 1042),
(37,'12-05-2020', 80, 8, 1011),
(38,'12-05-2020', 80, 8, 1023),
(39,'12-05-2020', 100, 8, 1032),
(40,'12-05-2020', 60, 8, 1011),
(41,'12-05-2020', 60, 12, 1031),
(42,'12-05-2020', 60, 12, 1034),
(43,'12-05-2020', 60, 12, 1043),
(44,'12-05-2020', 60, 12, 1033),
(45,'12-05-2020', 60, 12, 1044),
(46,'12-05-2020', 60, 12, 1032),
(47,'12-05-2020', 60, 12, 1011),
(48,'12-05-2020', 60, 12, 1040),
(49,'12-05-2020', 60, 12, 1022),
(50,'12-05-2020', 60, 12, 1025),
(51,'12-05-2020', 70, 16, 1025),
(52,'12-05-2020', 80, 16, 1042),
(53,'12-05-2020', 78, 16, 1034),
(54,'12-05-2020', 79, 16, 1043),
(55,'12-05-2020', 67, 16, 1045),
(56,'12-05-2020', 56, 16, 1040),
(57,'12-05-2020', 88, 16, 1033),
(58,'12-05-2020', 77, 16, 1031),
(59,'12-05-2020', 90, 16, 1032),
(60,'12-05-2020', 100, 16, 1011),
(61,'04-05-2020', 74, 17, 1025),
(62,'04-05-2020', 80, 17, 1042),
(63,'04-05-2020', 78, 17, 1034),
(64,'04-05-2020', 79, 17, 1043),
(65,'04-05-2020', 67, 17, 1045),
(66,'04-05-2020', 56, 17, 1040),
(67,'04-05-2020', 88, 17, 1033),
(68,'04-05-2020', 77, 17, 1031),
(69,'04-05-2020', 90, 17, 1032),
(70,'04-05-2020', 100, 17, 1011),
(71,'04-05-2020', 70, 17, 1025),
(72,'04-05-2020', 80, 17, 1042),
(73,'04-05-2020', 78, 25, 1034),
(74,'04-05-2020', 79, 25, 1043),
(75,'04-05-2020', 67, 25, 1045),
(76,'04-05-2020', 56, 25, 1040),
(77,'04-05-2020', 88, 25, 1033),
(78,'04-05-2020', 77, 25, 1031),
(79,'04-05-2020', 90, 25, 1032),
(80,'04-05-2020', 77, 25, 1022),
(81,'12-05-2020', 70, 28, 1041),
(82,'12-05-2020', 80, 28, 1022),
(83,'12-05-2020', 72, 28, 1034),
(84,'12-05-2020', 79, 28, 1043),
(85,'12-05-2020', 62, 28, 1045),
(86,'12-05-2020', 52, 28, 1040),
(87,'12-05-2020', 88, 28, 1033),
(88,'12-05-2020', 77, 28, 1031),
(89,'12-05-2020', 90, 28, 1032),
(90,'12-05-2020', 94, 28, 1011),
(91,'12-05-2020', 70, 28, 1025),
(92,'12-05-2020', 86, 28, 1042),
(93,'12-05-2020', 78, 28, 1034),
(94,'12-05-2020', 73, 28, 1043),
(95,'04-05-2020', 67, 3, 1033),
(96,'09-05-2020', 56, 3, 1040),
(97,'09-05-2020', 83, 3, 1043),
(98,'09-05-2020', 75, 3, 1031),
(99,'09-05-2020', 97, 3, 1032),
(100,'09-05-2020', 100, 3, 1011);

/*Table structure for table `tugas` */

DROP TABLE IF EXISTS `tugas`;

CREATE TABLE tugas (
  id int NOT NULL,
  judul varchar(50) NOT NULL,
  deskripsi text NOT NULL,
  deadline date NOT NULL,
  tanggal_upload date NOT NULL,
  filename varchar(255) DEFAULT NULL,
  filepath varchar(255) DEFAULT NULL,
  mata_pelajaran_kode int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel)
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert  into tugas(id, judul, deskripsi, deadline, tanggal_upload, mata_pelajaran_kode) values 
(1, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1001),
(2, 'pretest2', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1101),
(3, 'pretest3', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1010),
(4, 'pretest4', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1002),
(5, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1003),
(6, 'pretest2', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1103),
(7, 'pretest3', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1203),
(8, 'pretest4', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1004),
(9, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1004),
(10, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1104),
(11, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1204),
(12, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1005),
(13, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1005),
(14, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1105),
(15, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1205),
(16, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1006),
(17, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1007),
(18, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1107),
(19, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1207),
(20, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1007),
(21, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1007),
(22, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1108),
(23, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1208),
(24, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1008),
(25, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 1008),
(26, 'pretest2', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 1109),
(27, 'pretest3', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 1209),
(28, 'pretest4', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 1009),
(29, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 2009),
(30, 'pretest2', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 2103),
(31, 'pretest3', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2203),
(32, 'pretest4', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2004),
(33, 'pretest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 2004),
(34, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 2104),
(35, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2204),
(36, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2005),
(37, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 2005),
(38, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 2105),
(39, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2205),
(40, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2004),
(41, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 2001),
(42, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 2101),
(43, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2201),
(44, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2002),
(45, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '04-05-2020', '02-05-2020', 2003),
(46, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '08-05-2020', '02-05-2020', 2103),
(47, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2203),
(48, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2004),
(49, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '09-05-2020', '02-05-2020', 2203),
(50, 'posttest1', 'Kerjakan dengan menggunakan tulisan tangan', '12-05-2020', '02-05-2020', 2004);
/*Data for the table `tugas` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE users (
  id bigint NOT NULL,
  username varchar(10) NOT NULL,
  nama varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  password varchar(255)  NOT NULL,
  role varchar(255) NOT NULL,
  siswanis char(4) DEFAULT NULL,
  guruid int DEFAULT NULL,
  adminid int DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (siswanis) REFERENCES siswa (nis),
  FOREIGN KEY (adminid) REFERENCES admin (id_admin),
  FOREIGN KEY (guruid) REFERENCES guru (id_guru)
) 
ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into users(id,username,nama,email,password,role,siswanis,guruid,adminid) values 
(1,'ana','Ana','ana@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4001,NULL),
(2,'budi','Budi','budi@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4002,NULL),
(3,'coki','Coki','coki@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4003,NULL),
(4,'rahmat','Rahmat','rahmat@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4004,NULL),
(5,'sumirnah','Sumirnah','sumirnah@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4005,NULL),
(6,'djoko','Djoko','djoko@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4006,NULL),
(7,'ahmad','Ahmad','ahmad@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4007,NULL),
(8,'kaido','Kaido','kaido@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4008,NULL),
(10,'irpan','Irpan','irpan@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4010,NULL),
(11,'jack','Jack','jack@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4011,NULL),
(12,'borsalino','Borsalino','borsalino@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4012,NULL),
(13,'sakazuki','Sakazuki','sakazuki@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Guru',NULL,4013,NULL),
(14,'iren','Iren','iren@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1033',NULL,NULL),
(15,'nadya','Nadya','nadya@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1067',NULL,NULL),
(16,'aldi','Aldi','aldi@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1120',NULL,NULL),
(17,'nina','Nina','nina@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1155',NULL,NULL),
(18,'ria','Ria','ria@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1220',NULL,NULL),
(19,'andi','Andi','andi@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Siswa','1266',NULL,NULL),
(20,'dedi','Dedi','dedi@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Admin',NULL,NULL,3001),
(21,'evi','Evi','evi@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Admin',NULL,NULL,3002),
(22,'grace','Grace','grace@gmail','$2y$10$B4gUIl/0R56t9EEeU3zMlebzjeIxvN7p9q5II2N9oEB7f4/r90h9O','Admin',NULL,NULL,3003);

/*Table structure for table `waktu` */
Create table Waktu(
	id int not null,
	Tanggal date not null,
	Bulan varchar(20) not null,
	Tahun varchar(4) not null,
	Primary key (id)
)

/* Fact Table */

/* Pengumpulan_tugas_fact*/

CREATE TABLE pengumpulan_tugas_fact (
	id int NOT NULL,
	siswanis char(4) NOT NULL,
	mata_pelajaran_kode int NOT NULL,
	kode_semester int NOT NULL,
	kelas_id int NOT NULL,
	jurusan_kode int NOT NULL,
	id_tugas int NOT NULL,
	id_submissions int NOT NULL,
	jumlah_pengumpulan_tugas int NULL
	PRIMARY KEY (id),
	FOREIGN KEY (siswanis) REFERENCES siswa (nis),
	FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel),
	FOREIGN KEY (kode_semester) REFERENCES semester (kode_semester),
	FOREIGN KEY (jurusan_kode) REFERENCES jurusan (kode_jurusan),
	FOREIGN KEY (kelas_id) REFERENCES kelas (id),
	FOREIGN KEY (id_tugas) REFERENCES tugas (id),
	FOREIGN KEY (id_submissions) REFERENCES submissions (id)
)


CREATE TABLE Pengunggahan_materi_fact(
	id_materi int not null,
	guruid int not null,
	mata_pelajaran_kode int not null,
	kelas_id int null,
	semester_id int not null,
	jurusan_kode int not null,
	
	FOREIGN KEY (guruid) REFERENCES guru (id_guru),
	FOREIGN KEY (mata_pelajaran_kode) REFERENCES mata_pelajaran (kode_mapel),
	FOREIGN KEY (kelas_id) REFERENCES kelas (id),
	FOREIGN KEY (semester_id) REFERENCES semester (kode_semester),
	FOREIGN KEY (jurusan_kode) REFERENCES jurusan (kode_jurusan)
)

CREATE TABLE nilai_siswa_fact (
	id int NOT NULL,
	nis char(4) NOT NULL,
	id_guru int NOT NULL,
	kode_mapel int NOT NULL,
	kode_semester int NOT NULL,
	kode_jurusan int NOT NULL,
	id_kelas int NOT NULL,
	id_tugas int NOT NULL,
	id_submissions int NOT NULL,
	ratarata_nilai float NULL
	PRIMARY KEY (id),
	FOREIGN KEY (nis) REFERENCES siswa (nis),
	FOREIGN KEY (id_guru) REFERENCES guru (id_guru),
	FOREIGN KEY (kode_mapel) REFERENCES mata_pelajaran (kode_mapel),
	FOREIGN KEY (kode_semester) REFERENCES semester (kode_semester),
	FOREIGN KEY (kode_jurusan) REFERENCES jurusan (kode_jurusan),
	FOREIGN KEY (id_kelas) REFERENCES kelas (id),
	FOREIGN KEY (id_tugas) REFERENCES tugas (id),
	FOREIGN KEY (id_submissions) REFERENCES submissions (id)
)


Create table Pengguna_teregistrasi(
	id_users bigint not null,
	id_waktu int not null,
	nomor_registrasi int not null,
	FOREIGN KEY (id_users) REFERENCES users (id),
	FOREIGN KEY (id_waktu) REFERENCES waktu (id)
)


Create table Pengumuman_fact(
	id_pengumuman int not null,
	id_users bigint not null,
	FOREIGN KEY (id_users) REFERENCES users (id),
	FOREIGN KEY (id_pengumuman) REFERENCES pengumuman (id)
)

