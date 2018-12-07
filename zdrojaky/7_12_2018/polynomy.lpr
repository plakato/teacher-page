program polynomy;

const MaxPocet = 10;

type Polynom = record
 Pocet: word; {počet nenulových členů}
 Clen: array[0..MaxPocet] of
 record Koef: word; Exp: word end;
 end;


 function NacitajPolynom(): Polynom;
 var
   i:word = 0;
   pol:Polynom;
   znak:char;
 begin
   while not eoln do
   begin
     i += 1;
     read(pol.Clen[i].Koef);
     read(pol.Clen[i].Exp);
     //if not eoln then read(znak); {Znamienko +}
   end;
   pol.pocet := i;
   readln;
   NacitajPolynom := pol;
 end;

procedure Vypis(var p: Polynom);
var i:word;
begin
  for i:=1 to p.Pocet do
  begin
    if (i <> 1) then write('+');
    write(p.Clen[i].Koef,'*x^',p.Clen[i].Exp);
  end;
end;

var
  polynom1,polynom2,vysledny: Polynom;
  i1, i2,i: word;
begin
  polynom1 := NacitajPolynom();
  polynom2 := NacitajPolynom();
  i1 := 1;
  i2 := 1;
  i := 0;

  while (i1 <= polynom1.Pocet) and
        (i2 <= polynom2.Pocet) do
    begin
      i += 1;
      if (polynom1.Clen[i1].Exp < polynom2.Clen[i2].Exp) then
       begin
            vysledny.Clen[i] := polynom1.Clen[i1];
            i1 += 1;
       end else
       if (polynom1.Clen[i1].Exp > polynom2.Clen[i2].Exp) then
       begin
            vysledny.Clen[i] := polynom2.Clen[i2];
            i2 += 1;
       end else
       begin
            { Pri rovnakom exponente scitame koeficienty. }
            vysledny.Clen[i].Exp := polynom1.Clen[i1].Exp;
            vysledny.Clen[i].Koef:= polynom1.Clen[i1].Koef + polynom2.Clen[i2].Koef;
            i1 += 1;
            i2 += 1;
       end;
    end;

    {Ak v niektorom polynome este nieco zostalo, pridaj do vysledku.}
    while i1<= polynom1.Pocet do
    begin
      i += 1;
      vysledny.Clen[i] := polynom1.Clen[i1];
      i1 += 1;
    end;
    while i2<= polynom2.Pocet do
    begin
      i += 1;
      vysledny.Clen[i] := polynom2.Clen[i2];
      i2 += 1;
    end;

    vysledny.Pocet := i;
    Vypis(vysledny);

end.

