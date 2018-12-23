program bludiskoStromceka;
type
  plocha = array[1..100, 1..100] of char;
var
  velkost: integer;

procedure vypisBludisko(bludisko: plocha);
var
  i,j : integer;
begin
    for i:= 1 to velkost do
    begin
         for j:= 1 to velkost do
         begin
              write(bludisko[i,j]);
         end;
         writeln;
    end;

end;

procedure hladajCestu(bludisko: plocha; x,y: integer);
begin

    { Ak na dane policko mozeme vstupit, prehladame vsetky okolite policka. }
    if (bludisko[x, y] = ' ') or (bludisko[x, y] = 'S')  then
    begin
      { Bodkami si oznacime spravnu cestu. }
      if (bludisko[x, y] = ' ') then bludisko[x, y] := '.';
      hladajCestu(bludisko, x+1,y);
      hladajCestu(bludisko, x-1,y);
      hladajCestu(bludisko, x,y+1);
      hladajCestu(bludisko, x,y-1);
    end;
    { Ked dojdeme do ciela, vypiseme cestu. }
    if (bludisko[x,y] = 'C') then vypisBludisko(bludisko);
end;

var
  vstup: text;
  i, j, Sx, Sy: integer;
  bludisko: plocha;


begin
  { Nacitame vstup. }
  assign(vstup,'bludisko.txt');
  reset(vstup);
  readln(vstup, velkost);
  for i:= 1 to velkost do
  begin
      for j:= 1 to velkost do
      begin
          read(vstup,bludisko[i,j]);
          { Poznamename si, kde bol start. }
          if (bludisko[i,j] = 'S') then
          begin
            Sx := i;
            Sy := j;
          end;
      end;
      readln(vstup);
  end;
  close(vstup);

  { Znacneme prehladavat na startovnom policku. }
  hladajCestu(bludisko, Sx, Sy);
  readln;
end.

