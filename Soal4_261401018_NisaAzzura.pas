program Soal4_Kalkulator;
{ Kalkulator sederhana (case-of dan repeat-until) }
var
  pilihan : integer;
  a, b    : real;
  x, y    : integer;
  lagi    : char;
begin
  repeat
    writeln('========== KALKULATOR ==========');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('================================');
    write('Pilih operasi (1-5) : ');
    readln(pilihan);
    writeln;

    case pilihan of
      1: begin
           write('Masukkan angka pertama : ');
           readln(a);
           write('Masukkan angka kedua   : ');
           readln(b);
           writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
         end;
      2: begin
           write('Masukkan angka pertama : ');
           readln(a);
           write('Masukkan angka kedua   : ');
           readln(b);
           writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
         end;
      3: begin
           write('Masukkan angka pertama : ');
           readln(a);
           write('Masukkan angka kedua   : ');
           readln(b);
           writeln('Hasil: ', a:0:2, ' * ', b:0:2, ' = ', (a * b):0:2);
         end;
      4: begin
           write('Masukkan angka pertama : ');
           readln(a);
           write('Masukkan angka kedua   : ');
           readln(b);
           if b = 0 then
           begin
             writeln('Error: pembagian dengan nol!');
           end
           else
           begin
             writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', (a / b):0:2);
           end;
         end;
      5: begin
           { DIV dan MOD hanya untuk bilangan bulat }
           write('Masukkan bilangan bulat pertama : ');
           readln(x);
           write('Masukkan bilangan bulat kedua   : ');
           readln(y);
           if y = 0 then
           begin
             writeln('Error: pembagian dengan nol!');
           end
           else
           begin
             writeln('Hasil: ', x, ' DIV ', y, ' = ', x div y);
             writeln('Hasil: ', x, ' MOD ', y, ' = ', x mod y);
           end;
         end;
    else
      begin
        writeln('Pilihan operasi tidak valid!');
      end;
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi?(Y/T) ');
    readln(lagi);
    writeln;
  until (lagi = 'T') or (lagi = 't');

  writeln('Terima kasih!');
end.