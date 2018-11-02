program interval;
        var
          a, b, c, i: integer;
begin
  readln(a,b);
  c:=0;

  if (b<a) then
  begin
     c := a;
     a := b;
     b := c;
  end;

  for i:=a to b do
  writeln(i);

  readln;
end.

