program palindrom;
type A= array [1..5] of integer;
    var i:integer;
         k:A;


begin
  for i:=1 to 5 do  begin
   read (k[i]);
   write (k[i], ' ');
  end;
  for i:=5 downto 1 do
   write (k[i], ' ');
  readln;
  readln;
end.

