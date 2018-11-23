program Permutace_Sloupce;		{Upravene riesenie doc. Topfera}
const MaxN = 20;			{maximální velikost matice}
var
	N: integer;				{skutečná velikost matice}
	A: array[1..MaxN, 1..MaxN] of integer;	{uložení matice}
	Bylo: array[1..MaxN] of boolean;	{číslo bylo ve sloupci}
	Cislo: integer;				{zpracovávané číslo}
	Permutace: boolean;			{permutace čísel 1..N ve sloupci}
	Pocet: integer;				{počet sloupců s permutací 1..N}
	R, S: integer;				{číslo řádku a sloupce v matici}
procedure NacitajVstup();
begin
  	{Velikost matice}
	readln(N);
	Pocet := 0;
	{Prvky matice po řádcích}
	for R := 1 to N do
	for S := 1 to N do
            read(A[R,S]);
end;
procedure Vyresetuj();
begin
  for R := 1 to N do
      Bylo[R] := false;
  Permutace := true;	{ve sloupci by mohla být permutace}
end;

begin

    NacitajVstup;

    for S := 1 to N do
    begin
        Vyresetuj;
	for R:=1 to N do
        begin
	  Cislo := A[R,S];
	  if (Cislo >= 1) and (Cislo <= N) then
	      if Bylo[Cislo] then
		      Permutace := false	{číslo se opakuje - není permutace}
	      else
		      Bylo[Cislo] := true	{zaznamenat, že toto číslo už bylo}
	  else
	      Permutace := false;		{jiné číslo než od 1 do N}
	end;
        if Permutace then
	    Pocet := Pocet+1;
    end;

    writeln(Pocet);
    readln;
    readln;
end.

