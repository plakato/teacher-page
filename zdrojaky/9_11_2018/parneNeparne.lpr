program parneNeparne;
{ Zlozitost O(n), kde n je velkost vstupu. }

var
  vstup,neparne: array [1..50] of byte;
  i, pocetNep: byte;



begin
  // Nacitanie vstupu.
  for i:=1 to 50 do
  begin
    read(vstup[i]);
  end;

  //Vypiseme parne, neparne ulozime zvlast.
  pocetNep := 0;
  write('Parne cisla su: ');
  for i:=1 to 50 do
  begin
    if (vstup[i] mod 2 = 0) then
        write(vstup[i],' ')
    else
        begin
          pocetNep := pocetNep + 1;
          neparne[pocetNep] := vstup[i];
        end;
  end;
  writeln;

  //Vypiseme neparne.
  write('Neparne cisla su: ');
  for i:=1 to pocetNep do
  begin
    write(neparne[i],' ');
  end;
  writeln;

  readln;
  readln;
end.

