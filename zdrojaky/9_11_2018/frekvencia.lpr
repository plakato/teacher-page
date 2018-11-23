program frekvencia;
type
  pole = array [1..100] of smallint;
var
  cisla, cetnosti: pole;
  cislo,N,i: smallint;
  najdene: boolean;


begin
  N:= 0;
  read(cislo);

  { Nacitavame cisla kym nedostaneme nulu. }
  while (cislo <> 0) do
  begin
     { Najdene urcuje, ci sme uz dane cislo nasli, teda zapocitali mu cetnost. }
     najdene := false;
     { Prejdeme vsetky cisla co uz mame, ak tam je, zapocitame ho. }
     for i:=1 to N do
     begin
        if (cisla[i] = cislo) then
           begin
                cetnosti[i] := cetnosti[i] + 1;
                najdene := true;
                break;
           end;
     end;
     { Ak sme ho este nezapocitali, pridame ho. }
     if not najdene then
      begin
           N += 1;     // ekvivalentny zapis N := N + 1;
           cisla[N] := cislo;
           cetnosti[N] := 1;
      end;
     read(cislo);
  end;

  { Vypiseme spocitane cetnosti. }
  for i:=1 to N do
    writeln(cisla[i], ':', cetnosti[i]);

  readln;
  readln;
end.

