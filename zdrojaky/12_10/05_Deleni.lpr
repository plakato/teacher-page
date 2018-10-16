program Deleni;

var delenec, delitel, podil, zbytek: longint;
    realny: real;


begin

  writeln('Zadejte dvojici celych cisel oddelenou mezerou: ');
  readln(delenec, delitel);

  podil := delenec div delitel;
  zbytek := delenec mod delitel;
  writeln('Deleni ala zakladni skola: ');
  writeln(delenec, ' : ', delitel, ' = ', podil, ' (', zbytek, ')');

  realny := delenec / delitel;
  writeln('Realny podil: ');
  writeln(realny:0:3);

  readln;
end.

