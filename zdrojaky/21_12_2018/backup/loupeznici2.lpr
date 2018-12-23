program loupeznici2;

const MAX = 40;

var ceny: array [1..MAX] of word;
    mojeCeny: array [1..MAX] of boolean;
    pocet, i: byte;
    sucet: longword;

{ rozdelene - index pokial uz su predmety rozdelene. }
{ moje suma - sucet hodnot priradenych mne. }
function rozdel(rozdelene: byte; mojeSuma: longword): boolean;
var lze: boolean;
    j: byte;
begin
  { Ak mame rozdelene vsetko, vysledok vypiseme. }
  if rozdelene >= pocet then
  begin
    lze := (moje * 2 = sucet);
    if lze then
    begin
      for j := 1 to pocet do
        if mojeCeny[j] then
          write(ceny[j], ' ');
      writeln;
    end;
    rozdel := lze;
  end
  { Inak si skusime aktualny predmet pridat/nepridat a rozdelujeme dalej. }
  else
  begin
    inc(rozdelene);
    mojeCeny[rozdelene] := true;
    lze := rozdel(rozdelene, moje + ceny[rozdelene]);
    mojeCeny[rozdelene] := false;
    if lze then
      rozdel := true
    else
    begin
      rozdel := rozdel(rozdelene, moje);
    end;
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

