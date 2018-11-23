program transpozice;
var
  matica: array[1..10,1..10] of shortint;
  N,i,j, tmp: byte;

  procedure NacitajVstup();
  begin
    N:=0;
       { Nacitava po znakoch kym nenajde koniec riadku. }
      while not seekeoln do
      begin
        inc(N);
        read(matica[1,N]);
      end;
    { Uz vie rozmer matice, tak nacita zvysne riadky. }
    for i:=2 to N do
      for j:=1 to N do read(matica[i,j]);
  end;

procedure VypisMaticu();
begin
      for i:=1 to N do
        begin
             for j:=1 to N do write(matica[i,j], ' ');
             writeln;
        end;
end;

begin
  NacitajVstup;

  { Druhy cyklus az od i+1, aby sme neprehadzovali 2-krat. }
  for i:=1 to N do
  for j:=i+1 to N do
  begin
       { Prehod dva symetricke prvky. }
       tmp := matica[i,j];
       matica[i,j] := matica[j,i];
       matica[j,i] := tmp;
  end;

  VypisMaticu;

  readln;
  readln;
end.

