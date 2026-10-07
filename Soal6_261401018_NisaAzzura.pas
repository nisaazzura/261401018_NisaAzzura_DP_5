program Soal6_NilaiAkhir;
{ Nilai akhir = 30% Tugas + 30% UTS + 40% UAS, status kelulusan, indeks huruf }
var
  tugas, uts, uas, hadir, akhir : real;
  indeks : char;
begin
  write('Masukkan Nilai Tugas  : ');
  readln(tugas);
  write('Masukkan Nilai UTS    : ');
  readln(uts);
  write('Masukkan Nilai UAS    : ');
  readln(uas);
  write('Masukkan Kehadiran (%): ');
  readln(hadir);

  { 1. Hitung nilai akhir }
  akhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);

  { 3. Tentukan indeks huruf }
  if akhir >= 85 then
    indeks := 'A'
  else if akhir >= 75 then
    indeks := 'B'
  else if akhir >= 60 then
    indeks := 'C'
  else if akhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', indeks);

  { 2. Status lulus: nilai >= 60 DAN kehadiran >= 80% }
  if (akhir >= 60) and (hadir >= 80) then
    writeln('Status       : LULUS')
  else
    writeln('Status       : TIDAK LULUS');
end.