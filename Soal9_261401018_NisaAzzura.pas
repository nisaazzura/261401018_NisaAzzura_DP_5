program Soal9_JumlahHari;
{ Menentukan jumlah hari dalam bulan pada tahun tertentu }
var
  tahun, bulan, hari : integer;
  kabisat : boolean;
begin
  write('Masukkan tahun            : ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  { Cek tahun kabisat }
  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  if (bulan < 1) or (bulan > 12) then
  begin
    writeln('Nomor bulan tidak valid!');
    exit;
  end;

  case bulan of
    1, 3, 5, 7, 8, 10, 12 : hari := 31;
    4, 6, 9, 11           : hari := 30;
    2: if kabisat then
         hari := 29
       else
         hari := 28;
  end;

  writeln;
  if kabisat then
    writeln('Tahun ', tahun, ' adalah tahun kabisat.')
  else
    writeln('Tahun ', tahun, ' bukan tahun kabisat.');
  writeln('Bulan ', bulan, ' tahun ', tahun, ' memiliki ', hari, ' hari.');
end.