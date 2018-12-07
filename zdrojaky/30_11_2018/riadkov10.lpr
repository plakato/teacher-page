program riadkov10;
var
    vstup,vystup: text;
    riadok:string;
    pocet:byte = 0;
begin
  assign(vstup,'lorem.txt');
  assign(vystup,'lorem10.txt');
  reset(vstup);
  rewrite(vystup);

  while not eof(vstup) do
  begin
      inc(pocet);
      if (pocet > 10) then break;
      readln(vstup, riadok);
      writeln(vystup, riadok);
  end;

  close(vstup);
  close(vystup);
end.

