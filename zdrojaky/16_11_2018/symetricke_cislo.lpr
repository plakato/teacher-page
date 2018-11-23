program Symmetry;

function Reverse(N: longint): longint;
{obrací pořadí cifer čísla N}
var V:longint;                 {výsledné číslo}
begin
  V := 0;
  while N > 0 do
  begin
    V := V * 10 + N mod 10;    {k V přidáme cifru zprava}
    N := N div 10              {z N odstraníme cifru zprava}
  end;
  Reverse := V
end;

function IsSymmetric(N: longint): boolean;
{Testuje, zda je číslo N symetrické. Využívá funkci Reverse.}
begin
  IsSymmetric := (N = Reverse(N));
end;

var Num:longint;

begin
  readln(Num);
  while Num <> 0 do
  begin
    if IsSymmetric(Num) then
      writeln('Cislo ',Num,' je symetricke!')
    else
      writeln('Cislo ',Num,' nie je symetricke!');

    readln(Num);
  end;
end.
