program cikcak;
var
  i,width:integer;
  ch: char;


begin
  readln(width);

  repeat
  begin
    { Napiseme sikmu ciaru doprava. }
    for i:=1 to width-1 do
    begin
      { Vyuzijeme znalosti formatovania vystupu,
        napiseme lomitko odsadene o i pozicii. }
        write('\':i);
        { Cakame na enter a prejdeme na dalsi riadok. }
        readln();
    end;

    { Napiseme sikmu ciaru dolava. }
    for i:=width downto 2 do
    begin
      write('/':i);
      readln();
    end;
  end
  { Za until je podmienka zastavenia cyklu
    - ked je false, nikdy sa nezastavi. }
  until false;
end.

