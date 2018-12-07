program triedenie;
const
  pocet = 25;
type
  zoznam = array[1..pocet] of string;

function NacitajVstup(): zoznam;
var
  studenti: zoznam;
  vstup:text;
  i: word;
begin
  assign(vstup,'studenti.txt');
  reset(vstup);
  for i:=1 to pocet do
  begin
    readln(vstup,studenti[i]);
  end;

  NacitajVstup := studenti;
end;

function VZlomPoradi(a1,a2: string):boolean;
var i: word = 1;
begin
  { Prejdeme cez vsetky pismena, v ktorych sa zhoduju. }
   while (i<= length(a1)) and (i<= length(a2)) and
         (UpCase(a1[i]) = UpCase(a2[i])) do
         i += 1;
   { Kratsie slovo je abecedne skor ako dlhsie. }
   if (i > length(a1)) then VZlomPoradi := false
   else
   if (i > length(a2)) or (UpCase(a1[i]) > UpCase(a2[i])) then
     VZlomPoradi := true
   else
     VZlomPoradi := false;

end;

var
  S: zoznam;
  tmp: string;
  i,j:word;
begin
  S := NacitajVstup();

  for i:=2 to pocet do
    for j:=pocet downto i do
      if VZlomPoradi(S[j-1],S[j]) then     {vymenit sousedni prvky}
        begin
          tmp:=S[j-1];
          S[j-1]:=S[j];
          S[j]:=tmp;
        end;

  { Vypiseme vysledok. }
  for i:=1 to pocet do
      writeln(S[i]);
  readln;

end.

