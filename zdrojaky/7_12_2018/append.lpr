program logy;
uses sysutils;

var
  vystup:text;
begin
  assign(vystup, 'log.txt');
  { Subor log.txt musi existovat! Append nevytvara novy subor. }
  {if not FileExists('log.txt') then
  begin
    rewrite(vystup);
    close(vystup);
  end;  }
  append(vystup);
  writeln(vystup,TimeToStr(Time));
  close(vystup);
end.

