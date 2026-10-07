program Soal10_NamaHari;
{ Menampilkan nama hari berdasarkan angka 1-7 }
var
  angka : integer;
begin
  write('Input (1-7): ');
  readln(angka);

  case angka of
    1: writeln('Output: Hari Senin');
    2: writeln('Output: Hari Selasa');
    3: writeln('Output: Hari Rabu');
    4: writeln('Output: Hari Kamis');
    5: writeln('Output: Hari Jumat');
    6: writeln('Output: Hari Sabtu');
    7: writeln('Output: Hari Minggu');
  else
    writeln('Output: Angka tidak valid (masukkan 1-7)');
  end;
end.