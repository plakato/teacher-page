program piskvorky2;
type planek = array [0..6,0..6] of char;
  var i,j:byte;
    P:planek;
  function vyhra(a:char):boolean;
  var k:byte;
      nalez:boolean;
  begin
    k:=ord(a);
    nalez:=false;
    for i:=1 to 5 do
  begin
    for j:=1 to 5 do
    begin
    if ord(P[i,j])=k then
       begin
    if (ord(P[i+1,j+1])=k) and (ord(P[i-1,j-1])=k) then nalez:=true;
    if (ord(P[i+1,j])=k) and (ord(P[i-1,j])=k) then nalez:=true;
    if (ord(P[i,j+1])=k) and (ord(P[i,j-1])=k) then nalez:=true;
    if (ord(P[i-1,j+1])=k) and (ord(P[i+1,j-1])=k) then nalez:=true;
         end;
    end;
    end;
    vyhra:=nalez;
  end;
begin
  for i:=1 to 5 do
  begin
    for j:=1 to 5 do
    begin
    read(P[i,j])
    end;
    readln;
  end;
  if vyhra('X') then
     if vyhra('O') then writeln('REMIZA')
     else writeln('VYHRAL X')
  else if vyhra('O') then writeln('VYHRAL O')
          else writeln('REMIZA');
  readln;
  readln;
end.

