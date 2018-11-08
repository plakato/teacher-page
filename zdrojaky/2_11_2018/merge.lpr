program merge;
var
  p1,p2: array [1..10] of integer;
  vysledok: array [1..20] of integer;
  i,i1,i2: integer;


begin
  // Nacitame obe postupnosti zo vstupu.
  for i:=1 to 10 do
  begin
    read(p1[i]);
  end;

  for i:=1 to 10 do
  begin
    read(p2[i]);
  end;

  { Spojime ich do jednej podla velkosti.
    Vyvorime si zarazky, ktore nam budu ukazovat,
    kde sme v jednotlivych postupnostiach.}
  i1 := 1;
  i2 := 1;
  for i:=1 to 20 do
  begin
    if (p1[i1] < p2[i2]) then
    begin
      vysledok[i] := p1[i1];
      { Ak sme dosli na koniec niektoreho z poli,
        ulozime si tam navacsie mozne cislo, aby
        nikdy nebolo mensie nez prvky druheho pola. }
      if (i1 = 10) then
         p1[i1] := MAXINT
      else
          i1 := i1 + 1;
    end
      { To iste, ak berieme prvok z druheho pola. }
    else
    begin
      vysledok[i] := p2[i2];
      if (i2 = 10) then
         p1[i2] := MAXINT
      else
      i2 := i2 + 1;
    end;
    // Vysledok vypiseme.
    write(vysledok[i], ' ');
  end;
  readln;
  readln;
end.

