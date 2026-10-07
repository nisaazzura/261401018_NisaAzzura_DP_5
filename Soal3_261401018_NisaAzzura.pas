program Soal3_DeretAngka;
{ Menampilkan deret ganjil/genap dari 1 sampai N, kecuali kelipatan 5 (while dan continue) }
var
  n, pilihan, i : integer;
begin
  write('Masukkan nilai N : ');
  readln(n);
  writeln('Pilihan kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan (1/2)    : ');
  readln(pilihan);

  if (pilihan <> 1) and (pilihan <> 2) then
  begin
    writeln('Pilihan tidak valid!');
    exit;
  end;

  writeln;
  write('Hasil deret      : ');
  i := 1;
  while i <= n do
  begin
    { Lewati angka yang tidak sesuai kategori }
    if ((pilihan = 1) and (i mod 2 = 0)) or ((pilihan = 2) and (i mod 2 <> 0)) then
    begin
      inc(i, 1);  { naikkan i dulu sebelum continue agar tidak loop selamanya }
      continue;
    end;

    { Lewati kelipatan 5 }
    if i mod 5 = 0 then
    begin
      inc(i, 1);
      continue;
    end;

    write(i, ' ');
    inc(i, 1);
  end;
  writeln;
end.