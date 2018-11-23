program SymetriaMatice;
const Max = 50;
type
  Pole = array[1..Max, 1..Max] of integer;
var N: integer; {skutocny rozmer matice}
    matica:  Pole;
    i, j: integer;

function JeSymetrickaPodlaHlavnej(matica: Pole) :boolean;
var
    symetricka: boolean = true;
begin
  for i:=2 to N do
  for j:=1 to i-1 do
    if matica[i,j] <> matica[j,i] then
       symetricka:=false;
JeSymetrickaPodlaHlavnej := symetricka;
end;

function JeSymetrickaPodlaVedlajsej(matica: Pole) :boolean;
var
    symetricka: boolean = true;
begin
  for i:=1 to N-1 do
  for j:=1 to N-i do
    if matica[i,j] <> matica[N-j+1,N-i+1] then
       symetricka:= false;
JeSymetrickaPodlaVedlajsej := symetricka;
end;

function JeSymetrickaPodlaZvislej(matica: Pole) :boolean;
var
    symetricka: boolean = true;
begin
  for i:=1 to N do
  for j:=1 to N div 2 do
    if matica[i,j] <> matica[i,N-j+1] then
       symetricka:= false;
JeSymetrickaPodlaZvislej := symetricka;
end;

begin
N:=0;
{ Nacitava po znakoch kym nenajde koniec riadku. }
while not seekeoln do
  begin inc(N); read(matica[1,N]) end;
{ Uz vie rozmer matice, tak nacita zvysne riadky. }
for i:=2 to N do
  for j:=1 to N do read(matica[i,j]);


if (JeSymetrickaPodlaHlavnej(matica)) then
   writeln('Je symetricka podla hlavnej diagonaly.');

if (JeSymetrickaPodlaVedlajsej(matica)) then
   writeln('Je symetricka podla vedlajsej diagonaly.');

if (JeSymetrickaPodlaZvislej(matica)) then
   writeln('Je symetricka podla zvislej osi.');
readln;
readln;
end.
