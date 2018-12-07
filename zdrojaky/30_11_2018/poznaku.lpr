program poznaku;
var
    subor: text;
    znak:char;
begin
  assign(subor,'vstup.txt');
  reset(subor);

  while not eof(subor) do
  begin
       while not eoln(subor) do
       begin
            read(subor,znak);
            writeln(znak);
       end;
      readln(subor); // Precita odentrovanie.
  end;

  close(subor);
  readln;
end.

