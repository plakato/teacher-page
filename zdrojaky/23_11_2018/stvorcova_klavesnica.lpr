program stvorcova_klavesnica;

var
  slovo: string;
  i,riadok1,stlpec1,
    riadok2,stlpec2,
    dlzkaCesty: integer;
begin
  { ABCDE
    FGHIJ
    KLMNO
    PQRST
    UVWXY
    Z }
  readln(slovo);
  riadok1 := 0;
  stlpec1 := 0;
  dlzkaCesty := 0;

  for i:=1 to length(slovo) do
  begin
     riadok2 := (ord(slovo[i]) - ord('a')) div 5;
     stlpec2 := (ord(slovo[i]) - ord('a')) mod 5;
     dlzkaCesty += abs(riadok1-riadok2) + abs(stlpec1 - stlpec2);
     riadok1 := riadok2;
     stlpec1 := stlpec2;
  end;
  writeln('Je potreba aspon ',dlzkaCesty,' krokov.');
  readln;
end.

