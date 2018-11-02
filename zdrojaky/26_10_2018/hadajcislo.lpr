program hadajcislo;
uses crt;
var pocitac:integer;
    uzivatel:integer;
begin
  randomize;
  pocitac:= random(100)+1;
  writeln('Hadaj cislo');
  readln(uzivatel);
  repeat
      begin
        if uzivatel>pocitac then
           begin
             writeln('Moje cislo je mensie');
             writeln('Hadaj znova');
             readln(uzivatel);
           end
        else if uzivatel <> pocitac then
           begin
            writeln('Moje cislo je vecsie');
            writeln('Hadaj znova');
            readln(uzivatel);
           end
        else
           begin
            writeln('Trafil si');
            readln;
           end;
      end;
  until uzivatel=pocitac;
  readln;
end.

