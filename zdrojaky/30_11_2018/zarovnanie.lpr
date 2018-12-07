program zarovnanie;
const
  sirka:byte = 50;
var
    vstup,vystup: text;
    slovo, riadok:string;

{ Precita slovo z riadku. }
function precitajSlovo(): string;
var
    slovo: string = '';
    znak: char;
begin
  while not (eof(vstup) or eoln(vstup)) do
  begin
      read(vstup, znak);
      if (znak <> ' ') then
         slovo := slovo + znak
      else
        { Ignorujeme zbytocne medzery pred slovom. }
        if (slovo <> '') then break;
  end;
  { Ak sme len odriadkovali ale neprecitali slovo,
  naznacime to prazdnym slovom. }
  if eoln(vstup) and (slovo = '') then
     readln(vstup);

  precitajSlovo := slovo;
end;



begin
  assign(vstup,'lorem.txt');
  assign(vystup,'loremBlok.txt');
  reset(vstup);
  rewrite(vystup);
  riadok := precitajSlovo;

  while not eof(vstup) do
  begin
      slovo := precitajSlovo;
      { Prazne slovo znamena odriadkovat. }
      if slovo = '' then
         begin
           writeln(vystup,riadok);
           riadok := '';
         end;

      { Skontrolujeme ci sa este zmesti na riadok. }
      if (length(riadok) + length(slovo) + 1) <= sirka then
         begin
           if riadok = '' then
              riadok := slovo
           else
              riadok := riadok + ' ' + slovo;
         end
      else
        begin
          { Vypiseme riadok a na novy dame nove slovo. }
          writeln(vystup, riadok);
          riadok := slovo;
        end;

  end;

  { Ak nam zostal nevypisany riadok - vypiseme ho. }
  if (riadok <> '') then
     writeln(vystup, riadok);

  close(vstup);
  close(vystup);
end.

