program nasobilkacervenka;
var cislo,i,j: integer;

begin
  readln(cislo);
  for i:=1 to cislo do
  begin
    for j := 1 to cislo do
    write(' ',j*i);
    writeln();
  end;
  readln();
end.

