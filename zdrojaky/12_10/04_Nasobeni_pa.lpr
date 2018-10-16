program Nasobeni_pa;

var a, b, c: longint;

begin

  writeln('Zadejte dvojici celych cisel oddelenou mezerou: ');
  readln(a, b);
  c := a * b;
  writeln('Vypocet: ');
  writeln(a, ' x ', b, ' = ', c);
  readln;

end.

