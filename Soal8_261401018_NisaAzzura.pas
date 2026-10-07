program Soal8_GajiKaryawan;
{ Gaji karyawan berdasarkan golongan, lembur, dan bonus }
var
  gol : char;
  jam : integer;
  pokok, lembur, bonus, total : longint;
begin
  write('Masukkan Golongan (A/B/C)       : ');
  readln(gol);
  write('Masukkan total jam kerja/minggu : ');
  readln(jam);

  case gol of
    'A', 'a': pokok := 1500000;
    'B', 'b': pokok := 2000000;
    'C', 'c': pokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid!');
      exit;
    end;
  end;

  { Lembur: kelebihan jam di atas 40 jam, Rp20.000 per jam }
  if jam > 40 then
  begin
    lembur := (jam - 40) * 20000;
  end
  else
  begin
    lembur := 0;
  end;

  { Bonus khusus golongan C jika jam kerja > 50 }
  if ((gol = 'C') or (gol = 'c')) and (jam > 50) then
  begin
    bonus := 100000;
  end
  else
  begin
    bonus := 0;
  end;

  total := pokok + lembur + bonus;

  writeln;
  writeln('========== RINCIAN GAJI ==========');
  writeln('Gaji Pokok  : Rp ', pokok);
  writeln('Lembur      : Rp ', lembur);
  writeln('Bonus       : Rp ', bonus);
  writeln('----------------------------------');
  writeln('Total Gaji  : Rp ', total);
end.