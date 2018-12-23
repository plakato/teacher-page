program nasledujuca_permutacia;

function nasledujucaVacsia(permutacia : string; index: word) : word;
var
  najIndex, i: word;
begin
  najIndex := index+1;

  for i:=index + 2 to length(permutacia) do
  begin
      if (permutacia[i] > permutacia[index]) and
         (permutacia[i] <= permutacia[najIndex]) then
         najIndex := i;
  end;
  nasledujucaVacsia := najIndex;
end;

procedure swap(var permutacia : string; i1, i2:word);
var
  tmp: char;
begin
  tmp := permutacia[i1];
  permutacia[i1] := permutacia[i2];
  permutacia[i2] := tmp;
end;

procedure otoc(var permutacia: string; indexStart, indexEnd: word);
var
  i: word;
begin
  for i:=indexStart to indexEnd-1 do
  begin
      swap(permutacia, i,i+1);
  end;

  if (indexStart < i) then
     otoc(permutacia,indexStart, indexEnd-1);
end;

var
  permutacia: string;
  i: word;

begin
  readln(permutacia);
  i := length(permutacia) - 1;
  // Citame kym je zprava rastuca.
  while (i > 0) and (permutacia[i] > permutacia[i+1]) do
  begin
     i -= 1;
  end;

  if (i = 0) then writeln('Toto je lexikograficky posledna permutacia.')
  else
  begin
      swap(permutacia, i, nasledujucaVacsia(permutacia,i));
      otoc(permutacia, i+1, length(permutacia));
      writeln(permutacia);
  end;

  readln;
end.

