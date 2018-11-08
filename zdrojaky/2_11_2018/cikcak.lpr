program cikcak;
var
  { Premenna right urcuje, ci ideme doprava. }
  right: Boolean = True;
  i,j,width:integer;
  ch: char;


begin
  readln(width);

  { Jeden beh cyklu nakresli sikmu ciaru. }
  while(true) do
  begin
    { Premenna i nam bude urcovat poziciu lomitka. }
    for i:=0 to width do
    begin
      { Kreslime sikmo zlava doprava }
      if (right) then
      begin
        { Kreslime medzery, len na i-tej pozicii lomitko. }
        for j:=0 to width do
        begin
          if (j=i) then
             write('\')
          else
              write(' ');
        end;
        end
      else
      { Kreslime sikmo zprava dolava. }
      begin
        for j:=width downto 0 do
        begin
          if (j=i) then
             write('/')
          else
              write(' ');
        end;
      end;
      writeln;
      readln(ch);
    end;
    { Zmenime smer }
    right := not(right);
  end;
end.

