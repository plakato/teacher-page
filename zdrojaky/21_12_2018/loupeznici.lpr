program elfovia;

const MAX = 40;

var ceny: array [1..MAX] of word;
    pocet, i: byte;
    sucet: longword;

function rozdel(rozdelene: byte; moje: longword): boolean;
begin
  if rozdelene >= pocet then
    rozdel := (moje * 2 = sucet)
  else
  begin
    inc(rozdelene);
    rozdel := rozdel(rozdelene, moje + ceny[rozdelene]) or
              rozdel(rozdelene, moje);
  end;
end;

begin
  readln(pocet);
  sucet := 0;
  for i := 1 to pocet do
  begin
    read(ceny[i]);
    sucet += ceny[i];
  end;
  readln;

  if rozdel(0, 0) then
    writeln('Da sa rozdelit.')
  else
    writeln('Neda sa rozdelit.');
  readln;

end.

