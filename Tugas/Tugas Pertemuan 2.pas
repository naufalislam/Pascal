Program menghitung_nilai_akhir;

Uses Crt;

var
        nama, nis, kelas, mata_kuliah, kriteria, predikat: String;
        nilai_absen, nilai_tugas, nilai_uts, nilai_uas, nilai_angka: Integer;
        nilai_huruf: String[1];
Begin
        ClrScr;
        nama := 'Steven Chou';
        nis := '720067';
        kelas := 'R1A';
        mata_kuliah := 'Pemrograman 1';
        writeln('Program input data nilai siswa');
        writeln('-------------------------------');
        writeln('Nama       ', ': ':12, nama);
        writeln('Nis        ', ': ':12, nis);
        writeln('Kelas      ', ': ':12, kelas);
        writeln('Mata Kuliah', ': ':12, mata_kuliah);
        write('Nilai Absen  ', ': ':10);readln(nilai_absen);
        write('Nilai Tugas  ', ': ':10);readln(nilai_tugas);
        write('Nilai UTS    ', ': ':10);readln(nilai_uts);
        write('Nilai UAS    ', ': ':10);readln(nilai_uas);

        nilai_angka := (nilai_absen*10 div 100) + (nilai_tugas*20 div 100) + (nilai_uts*30 div 100) + (nilai_uas*40 div 100);

        if(nilai_angka > 85) then
                Begin
                        nilai_huruf := 'A';
                        kriteria := 'Sangat Baik';
                        predikat := 'Lulus';
                End
        else if((nilai_angka >= 70) and (nilai_angka <= 85)) then
                Begin
                        nilai_huruf := 'B';
                        kriteria := 'Baik';
                        predikat := 'Lulus';
                End
        else if((nilai_angka >= 60) and (nilai_angka < 70)) then
                Begin
                        nilai_huruf := 'C';
                        kriteria := 'Cukup';
                        predikat := 'Lulus';
                End
        else if((nilai_angka >= 45) and (nilai_angka < 60)) then
                Begin
                        nilai_huruf := 'D';
                        kriteria := 'Kurang';
                        predikat := 'Tidak Lulus';
                End
        else if(nilai_angka < 45) then
                Begin
                        nilai_huruf := 'E';
                        kriteria := 'Mengulang';
                        predikat := 'Tidak Lulus';
                End;

        writeln('Nilai Akhir', ': ':12, nilai_angka, ' dengan ketentuan');
        writeln('':23, 'Nilai Absen    (10%)');
        writeln('':23, 'Nilai Tugas    (20%)');
        writeln('':23, 'Nilai UTS      (30%)');
        writeln('':23, 'Nilai UAS      (40%)');
        writeln('Nilai huruf', ': ':12, nilai_huruf);
        writeln('Kriteria   ', ': ':12, kriteria);
        writeln('Predikat   ', ': ':12, predikat);



        readln;
End.







