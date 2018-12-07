program navystup;
var
    subor: text;
    riadok:string;
begin
  assign(subor,'vstup.txt');
  reset(subor);

  while not eof(subor) do
  begin
       readln(subor,riadok);
       writeln(riadok);
  end;

  close(subor);
  readln;
end.

