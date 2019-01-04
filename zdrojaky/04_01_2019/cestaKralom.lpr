program cestaKralom;
const
  N = 8;
  nic = -1;
  prekazka = -2;
var
  sachovnica: array[0..N+1,0..N+1] of shortint;
  cielX, cielY : shortint;

procedure NacitajVstup();
var
  i,j,x,y,pocetPrekazok: shortint;
begin
  { Inicializujeme sachovnicu a obkolesime ju prekazkami. }
  for i:= 0 to N+1 do
  for j:= 0 to N+1 do
    if (i = 0) or (i = N+1) or
       (j = 0) or (j = N+1) then
        sachovnica[i,j] := prekazka
    else
        sachovnica[i,j] := nic;
  { Nacitame poziciu startu, ciela a prekazok. }
  read(x,y);
  sachovnica[x,y] := 0;
  read(cielX, cielY);
  read(pocetPrekazok);
  for i:= 1 to pocetPrekazok do
  begin
    read(x,y);
    sachovnica[x,y] := prekazka;
  end;
end;

var
  i, j, odchylkaX, odchylkaY, krok: shortint;
  urobilKrok: boolean = true;
begin
  NacitajVstup();
  krok := 0;
  while (urobilKrok) and (sachovnica[cielX,cielY] = nic) do
  begin
      urobilKrok:=false;
      for i:= 1 to N do
      for j:= 1 to N do
      begin
          { Ak sme tu v minulom kroku dosli, skusime krok do vsetkych stran. }
          if (sachovnica[i,j] = krok) then
              begin
                for odchylkaX:=-1 to 1 do
                for odchylkaY:=-1 to 1 do
                if (sachovnica[i+odchylkaX, j+odchylkaY] = nic) then
                    begin
                    sachovnica[i+odchylkaX, j+odchylkaY]:= krok+1;
                    urobilKrok:=true;
                    end;
              end;
      end;
      krok:=krok+1;
  end;

  if (sachovnica[cielX, cielY] = nic) then
      writeln('Kral sa do ciela nevie dostat.')
  else
      writeln('Kral sa do ciela dostane na ',sachovnica[cielX, cielY],' krokov.');

  readln;
  readln;

end.

