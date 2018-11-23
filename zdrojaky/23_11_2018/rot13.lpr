program rot13;
{ Casova zlozitost O(dlzkaSlova). }
  var
    slovo: string;
    i: integer;
function posun(s, koniecABC: char) : char;
var vysledok: word;
begin
  vysledok:= ord(s) + 13;
  { Skontrolujeme, ci sme nevysli za koniec abecedy. }
  if vysledok > ord(koniecABC) then
     vysledok:= vysledok - 26;
  posun:=chr(vysledok);
end;


begin
  readln(slovo);

  for i:=1 to length(slovo) do
  begin
      if (slovo[i] in ['a'..'z']) then
         slovo[i] := posun(slovo[i],'z')
      else if (slovo[i] in ['A'..'Z']) then
         slovo[i] := posun(slovo[i],'Z');
  end;
  writeln(slovo);
  readln;
end.

