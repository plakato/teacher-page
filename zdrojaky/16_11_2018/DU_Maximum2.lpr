program DU_Vyskyty_maxima_v_postupnosti_verzia_1;
type pole = array[1..1000] of integer;
var n:integer;
    i:integer;
    max:integer;
    a:pole;
begin
  readln(n);
  for i:=1 to n do
     read(a[i]);
  max:=a[1];
  for i:=1 to n do
     if a[i]>max then max:=a[i];
  writeln(max);
  for i:=1 to n do
     if a[i]=max then write(i,' ');
end.

