program minipexeso;
{ Algoritmus je potencionalne nekonecny (ked ma uzivatel mizernu pamat)
  ale 1 krok (otocenie dvoch karticiek) bezi v O(n) - pretoze musime vypisat n karticiek. }
uses crt;
var
  pexeso: array [1..10] of char = ('a','a','b','b','c','c','d','d','e','e');
  showing: array [1..10] of boolean;
  finished: boolean = false;
  i,j,a,b: byte;
  tmp: char;

begin
  Randomize;
  // Prehadzeme pexeso, aby bolo zamiesane.
  for i:=1 to 10 do
  begin
     j := Random(10)+1;
     tmp := pexeso[i];
     pexeso[i] := pexeso[j];
     pexeso[j] := tmp;
     showing[i] := false;
  end;

  { Na zaciatok vypiseme cisla karticiek. }
  for i:=1 to 10 do
      write(i, ' ');
  writeln;

  { Kym nie su vsetky pary najdene, nechame uzivatela otocit 2 karticky. }
  while (not finished) do
  begin
       finished := true;
       { Otocime karticky, ktore uzivate zvoli. }
       writeln('Co chces otocit?');
       readln(a,b);
       showing[a] := true;
       showing[b] := true;

       { Vymazeme obrazovku. }
       clrscr;

       { Vykreslime karticky. }
       for i:=1 to 10 do
        begin
           if (showing[i]) then
                 write(pexeso[i],' ')
           else
           begin
                write(i,' ');
                { Urcite mame neotocenu karticku, takze sme este neskoncili. }
                finished := false;
           end;
        end;
       writeln;

       { Ak otocene karticky nie su par, zasa ich schovame. }
       if (pexeso[a] <> pexeso[b]) then
          begin
            showing[a] := false;
            showing[b] := false;
          end;
  end;

   writeln('Gratulujem, nasiel si vsetky pary!');
   readln;
end.

