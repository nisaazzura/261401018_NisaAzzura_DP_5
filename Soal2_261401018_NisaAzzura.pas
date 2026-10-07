program Soal2;
{ Verifikasi login: repeat-until + break, maksimal 3 percobaan }
const
  RAHASIA = 'pascal123';
  MAKS    = 3;
var
  input       : string;
  percobaan   : integer;
  berhasil    : boolean;
begin
  percobaan := 0;
  berhasil  := false;

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/', MAKS, '): ');
    readln(input);

    if input = RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;                      { hentikan loop }
    end
    else
      writeln('Kata sandi salah.');
  until percobaan >= MAKS;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.