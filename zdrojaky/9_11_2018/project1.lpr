program rozklad_na_prvocinitele;
var n,delitel:longint;
  pole: array [1..10] of integer;


begin
  for i:=1 to 10 do
  pole[i] := 0;

  readln(n);
  delitel:=2;

  repeat
       while n mod delitel = 0 do
             begin
                  write(' ',delitel);
                  n:=n div delitel;
             end;
       delitel:=delitel+1;

  until n=1;

  readln();


end.
