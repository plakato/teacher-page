program Promenne_pa;

var cislo, dalsi: byte;
    desetinne: real;
    pismeno: char;

begin

  cislo := 50;
  dalsi := 77;
  desetinne := 0.3;
  pismeno := 'm';

  writeln(cislo);
  writeln(dalsi, pismeno, desetinne:0:6);
  dalsi := 2 * dalsi - cislo;
  writeln(dalsi);

  readln;

end.

