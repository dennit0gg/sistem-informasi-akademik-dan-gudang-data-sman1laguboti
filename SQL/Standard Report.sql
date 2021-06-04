Use sia02_db

/* Bisnis Proses Pengumpulan Tugas*/
select mata_pelajaran.nama_mapel, kelas.kategori_kelas, semester.tahun_ajaran, tugas.judul, submissions.siswanis
from mata_pelajaran inner join kelas_mata_pelajaran on mata_pelajaran.kode_mapel = kelas_mata_pelajaran.mata_pelajaran_kode
inner join kelas on kelas_mata_pelajaran.kelasid = kelas.id
inner join semester on mata_pelajaran.semester_kode = semester.kode_semester
inner join tugas on mata_pelajaran.kode_mapel = tugas.mata_pelajaran_kode
inner join submissions on tugas.id = submissions.tugasid

/* Bisnis Proses Pengunggahan Tugas*/
Select mata_pelajaran.kode_mapel, mata_pelajaran.nama_mapel,
	kelas.id, kelas.kategori_kelas,
	jurusan.kode_jurusan, jurusan.jurusan,
	semester.semester, semester.tahun_ajaran,
	materi_pembelajaran.judul, materi_pembelajaran.tanggal
from mata_pelajaran inner join kelas_mata_pelajaran on
	mata_pelajaran.kode_mapel = kelas_mata_pelajaran.mata_pelajaran_kode
	inner join kelas on
	kelas_mata_pelajaran.kelasid = kelas.id
	inner join jurusan_mata_pelajaran on
	mata_pelajaran.kode_mapel = jurusan_mata_pelajaran.mata_pelajaran_kode
	inner join jurusan on
	jurusan_mata_pelajaran.jurusan_kode = jurusan.kode_jurusan
	inner join semester on
	mata_pelajaran.semester_kode = semester.kode_semester
	inner join materi_pembelajaran on
	mata_pelajaran.kode_mapel = materi_pembelajaran.mata_pelajaran_kode

select distinct nama_mapel as mapel from mata_pelajaran

/* Bisnis Proses Pengumuman*/


/* Bisnis Proses Nilai Siswa */
SELECT mata_pelajaran.nama_mapel, 
		kelas.kategori_kelas, 
		tugas.judul,
		semester.tahun_ajaran,
		submissions.siswanis, 
		submissions.nilai
FROM mata_pelajaran INNER JOIN
kelas_mata_pelajaran ON
mata_pelajaran.kode_mapel = kelas_mata_pelajaran.mata_pelajaran_kode 
INNER JOIN kelas ON
kelas_mata_pelajaran.kelasid = kelas.id
INNER JOIN
semester ON
mata_pelajaran.semester_kode = semester.kode_semester
INNER JOIN tugas ON
mata_pelajaran.kode_mapel = tugas.mata_pelajaran_kode
INNER JOIN submissions ON
tugas.id = submissions.tugasid

/* Bisnis Proses Pengguna Teregistrasi */