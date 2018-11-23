program nejdelsi_podposloupnost;

var P: array [1..10000] of smallint;
    Index1Nejdelsi,Index2Nejdelsi,AktualniIndex1,AktualniIndex2,n,i: integer;

begin

  readln(n);
  for i:=1 to n do read(P[i]);

  AktualniIndex1:=1;
  AktualniIndex2:=1;
  Index1Nejdelsi:=1;
  Index2Nejdelsi:=1;

  for i:=2 to n do
  begin
    if P[i-1]<P[i] then
    begin
     begin
      AktualniIndex2:=i;
     end;
     begin
      if AktualniIndex2-AktualniIndex1>Index2Nejdelsi-Index1Nejdelsi then
      begin
       Index1Nejdelsi:=AktualniIndex1;
       Index2Nejdelsi:=AktualniIndex2;
      end;
     end;
    end
    else
    begin
      AktualniIndex1:=i;
      AktualniIndex2:=i;
    end

  end;

  for i:=Index1Nejdelsi to Index2Nejdelsi do write(P[i],' ');

  readln;

end.

