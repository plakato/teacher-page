program DU_Vyskyty_maxima_v_postupnosti_verzia_2;
type A=array[1..1000] of longint;
var pocet_cisel,i,j,max:longint;
    k:A;
begin
  max:=0;
  read(pocet_cisel);

  for i:=1 to pocet_cisel do
  begin
    read(k[i]);
    if k[i]>max then
    begin
      max:=k[i];
    end;
  end;

  writeln(max);

  for j:=1 to pocet_cisel do
  begin
    if k[j]=max then
    begin
      write(j,' ');
    end;
  end;


end.

