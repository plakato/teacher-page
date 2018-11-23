program sibenica;
uses crt;

type
  poleBool = array[1..255] of boolean;
var
  slovo: string;
  odhalene: poleBool;
  i: integer;
  uhadnute: boolean = false;

procedure Vypis(slovo:string; odhalene: poleBool);
begin
  for i:=1 to length(slovo) do
  begin
       if (odhalene[i]) then
          write(slovo[i]+' ')
       else
           write('_ ');
  end;
  writeln;
end;

function SkusUhadnut(slovo:string; var odhalene: poleBool) : boolean;
var
  pismenko: char;
  uhadol: boolean = true;
begin
  writeln('Hadaj pismenko:');
  readln(pismenko);
  for i:= 1 to length(slovo) do
  begin
       { Aby nezalezalo na velkych a malych pismenach, porovnavame upcase. }
       if (UpCase(slovo[i]) = UpCase(pismenko)) then
            odhalene[i] := true;
       if (not odhalene[i]) then
            uhadol := false;
  end;
  SkusUhadnut := uhadol;
end;


begin
  readln(slovo);
  { Na zaciatku si pre istotu nastavime odhalene na false. }
  for i:=1 to length(odhalene) do
      odhalene[i] := false;

  while not uhadnute do
  begin
       clrscr;
       Vypis(slovo,odhalene);
       uhadnute := SkusUhadnut(slovo, odhalene);
  end;

  writeln('Gratulujem, odhalil si cele slovo!');
  readln;

end.

