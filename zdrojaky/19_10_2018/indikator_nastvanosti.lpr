program indikator_nastvanosti;
        var
          ch: char;
          velke: integer;
begin
  read(ch);
  velke :=0;

  while(ch <> '.') do
  begin
       if (ch >= 'A') and (ch <= 'Z') then
        begin
           inc(velke);
        end;
       read(ch);
  end;

  writeln('Napisali ste ', velke, ' velkych pismen'); 
  readln;
  readln;
end.

