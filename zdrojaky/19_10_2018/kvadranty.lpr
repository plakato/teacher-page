program kvadranty;

var x,y: real;

begin
  readln(x,y);

  if (x=0) or (y=0) then
  writeln('Bod je na osi.');


  if (x>0) then
  begin
    if (y>0) then
       writeln('1.kvadrant')
    else
      writeln('4.kvadrant');
  end else
  begin
    if (y>0) then
       writeln('2.kvadrant')
    else
      writeln('3.kvadrant');
  end;

  Readln();



end.

