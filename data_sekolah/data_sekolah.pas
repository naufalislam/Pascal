program data_sekolah;
Uses Crt;
Var
 Nama_SMA:String[50];
 Status :String[15];
 Alamat :String[45];
 Lahir :Integer;
Begin
 Clrscr;
 Nama_SMA  :='Sma Negeri 78 Jakarta Barat';
 Lahir :=1995;
 Status :='Disamakan';
 Alamat :='jl. Bhalti IV/1 Jakarta';
 Writeln('Data Sekolah');
 Writeln('=============');
 writeln;
 writeln('Nama Sekolah =',Nama_SMA);
 writeln('Berdiri tahun =',Lahir);
 writeln('Status   =',Status);
 writeln('Alamat =',Alamat);
 Readln;
end.