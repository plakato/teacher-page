program zasobnikImplementace;
var
  N:integer = 0;
  zasobnik: array[1..100] of char;
  vysledok: string = '';
  znak: char;
begin
  { Nacitame prikazy na prvom riadku. }
  while not eoln do
  begin
      read(znak);
      { Ignorujeme pop ak na zasobniku nic nie je. }
      if (znak = '*') and (N>0) then
      begin
        vysledok += zasobnik[N];
        N -= 1;
      end
      else
      begin
          N += 1;
          zasobnik[N] := znak;
      end;
  end;

  writeln(vysledok);
  readln;
  readln;
end.

