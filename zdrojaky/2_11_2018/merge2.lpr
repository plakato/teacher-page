program merge2;
{ Ina verzia mergu. }
var
  { Vysledok si vlastne ani nemusime ukladat do pola. }
  p1,p2: array [1..10] of integer;
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
  repeat
  begin
    { Vyriesime aj specialny pripad, ak je jeden index vacsi nez dlzka pola
      potom vypisujeme uz len druhe pole. }
    if (i1 > 10) then
    begin
         { Hodnotu neukladame, rovno vypiseme. }
         write(p2[i2], ' ');
         { Ponunieme zarazku na dalsi prvok. }
         i2 := i2 + 1;
    end
    else if (i2 > 10) then
    begin
         write(p1[i1], ' ');
         i1 := i1 + 1;
    end
    else if (p1[i1] < p2[i2]) then
    begin
         write(p1[i1], ' ');
         i1 := i1 + 1;
    end
    else
    begin
        write(p2[i2], ' ');
        i2 := i2 + 1;
    end;
  end
  { Ukoncime ak su obe zarazky za koncom pola. }
  until (i1 = 11) and (i2 = 11);
  readln;
  readln;
end.

