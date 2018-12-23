program project2;
{$R+} {$Q+}
type vrcholy = array [1..1000] of longint;
type matica = array[1..1000,1..1000] of boolean;
var vr:vrcholy;
    n,e,a,b:longint;
    incm:matica;
    kompon,i,k:longint;

procedure prehladaj(vrch,hod:integer);
var i:integer;
begin
  for i:=vrch+1 to n do
     begin
       if (incm[vrch,i]=true) and (vr[i]=-1) then
            begin
              vr[i]:=hod;
              prehladaj(i,hod);
            end;
     end;
end;

begin
  readln(n,e);
  for i:=1 to n do
     for k:=1 to n do
        incm[i,k]:=false;

  for i:=1 to e do
     begin
       readln(a,b);
       incm[a,b]:=true;
       incm[b,a]:=true;
     end;

  for i:=1 to n do
     vr[i]:=-1;

  kompon:=0;
  for i:=1 to n do
     if vr[i]=-1 then
          begin
            kompon:=kompon+1;;
            vr[i]:=kompon;
            prehladaj(i,kompon);
          end;

  //for i:=1 to n do write(vr[i],' ');

  for i:=1 to kompon do
     begin
     for k:=1 to n do
        if vr[k]=i then
             begin
               write(k);
               if k<n then write(' ');
             end;
     if i<kompon then writeln;
     end;
  readln;
end.


