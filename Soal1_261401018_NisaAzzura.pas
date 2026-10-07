program Soal1_TokoBuku;
{ Menghitung total belanja N barang beserta diskon (for-to-do dan if-else) }
var
  n, i, persen : integer;
  harga, total, diskon, bayar : longint;
begin
  total := 0;
  write('Masukkan jumlah barang (N): ');
  readln(n);
  writeln;

  { Input harga barang ke-1 sampai ke-N, sekaligus mencatat rincian }
  writeln('========== RINCIAN BELANJA ==========');
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ' : Rp ');
    readln(harga);
    writeln('  -> Barang ke-', i, ' = Rp ', harga);
    total := total + harga;
  end;

  { Penentuan persentase diskon }
  if total < 100000 then
  begin
    persen := 0;
  end
  else if total < 500000 then
  begin
    persen := 10;
  end
  else
  begin
    persen := 20;
  end;

  diskon := total * persen div 100;
  bayar  := total - diskon;

  writeln('-------------------------------------');
  writeln('Total Sebelum Diskon : Rp ', total);
  writeln('Diskon (', persen, '%)        : Rp ', diskon);
  writeln('Total Bayar Akhir    : Rp ', bayar);
  writeln('=====================================');
end.