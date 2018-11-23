program suma_v_postupnosti;

var
  postupnost: array[1..10] of smallint;
  N, i, j, cislo1, cislo2: smallint;
  najdene: boolean = false;

begin
  { Nacitame vstup }
  read(N);
  for i := 1 to 10 do
    Read(postupnost[i]);

  { Skusame scitat kazde s kazdym - ale neskusame zbytocne kazdu dvojicu 2-krat
    preto j zacina na i+1. }
  for i:=1 to 9 do
    begin
      for j:=i+1 to 10 do
        begin
          if (postupnost[i] + postupnost[j] = N) then
          begin
            cislo1 := postupnost[i];
            cislo2 := postupnost[j];
            najdene := true;
            break;
          end;
        end;
    end;

  { Vypis vystupu. }
  if najdene then
     writeln('Cislo ',N,' vieme zapisat ako ',cislo1,' + ',cislo2)
  else
      writeln('Cislo ',N,' neviem napisat ako sucet 2 cisel danej postupnosti.');

  readln;
  readln;
end.
