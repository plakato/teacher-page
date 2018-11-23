program Caesar;
{ Casova zlozitost O(n), kde n je velkost vstupneho textu. }
var
	kluc: integer;
	text: array[1..10000] of char;
	i, n, nova: integer;
        ch: char;

begin
        { Nacitanie vstupu, velkost textu si ulozime do n.}
	readln(kluc);
	read(ch);
        n := 0;
        while (ch <> '.') do
        begin
           n += 1;
           text[n] := ch;
           read(ch);
        end;

        { Vsetko okrem medzery posunieme o 'kluc' pismen v abecede. }
        for i := 1 to n do
        begin
	  if (text[i] <> ' ') then
          begin
		  nova := ord(text[i]);
		  nova := nova + kluc;
                  { Osetrime pretecenie mimo abecedu.}
		  if (nova < ord('a')) then
			  nova := nova + (ord('z')-ord('a')+1);
		  if (nova > ord('z')) then
			  nova := nova - (ord('z')-ord('a')+1);
		  text[i] := chr(nova);
	  end;
	end;

        { Vypis vystupu. }
        for i:=1 to N do
        begin
          write(text[i]);
        end;
        readln;
        readln;
end.
