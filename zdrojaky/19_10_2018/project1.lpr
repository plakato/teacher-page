program prestupny;

var
rok: integer;

begin
  readln(rok);
  if ((rok mod 4 = 0) and (rok mod 400 = 0)) or
     ((rok mod 4 = 0) and (rok mod 100 <> 0)) then
  writeln('je prestpny')
  else
  writeln('nie je prestupny');


  readln;
end.

