program Soal7;
{ Tarif parkir dengan case-of }
var
  kode  : char;
  jam   : integer;
  tarif, awal, tambah, maks : longint;
  valid : boolean;
begin
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  kode := upcase(kode);
  write('Lama parkir (jam): ');
  readln(jam);
  if jam < 1 then jam := 1;        { minimal dihitung 1 jam }

  valid := true;
  case kode of
    'M': begin awal := 5000;  tambah := 3000; maks := 30000; end;
    'K': begin awal := 2000;  tambah := 1000; maks := 10000; end;
    'B': begin awal := 10000; tambah := 5000; maks := 50000; end;
  else
    valid := false;
  end;

  if not valid then
    writeln('Kode kendaraan tidak valid.')
  else
  begin
    if jam > 10 then
      tarif := maks                              { tarif maksimal flat }
    else
      tarif := awal + (jam - 1) * tambah;
    writeln('Lama parkir : ', jam, ' jam');
    writeln('Tarif parkir: Rp', tarif);
  end;
end.