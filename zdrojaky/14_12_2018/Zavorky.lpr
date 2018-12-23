program Zavorky;
// Autor: Martin Dvorak.

var pocet: byte;

function zavorkuj(prefix: string; levych, pravych: byte): longword;
var soucet: longword;
begin
  if pravych = 0 then
  begin
    writeln(prefix);
    zavorkuj := 1;
  end
  else
  begin
    soucet := 0;
    if pravych > levych then
      soucet := zavorkuj(prefix + ')', levych, pravych-1);
    if levych > 0 then
      soucet += zavorkuj(prefix + '(', levych-1, pravych);
    zavorkuj := soucet;
  end;
end;

begin

  writeln('Zadejte pocet paru zavorek: ');
  readln(pocet);
  writeln(zavorkuj('', pocet, pocet));
  readln;

end.

