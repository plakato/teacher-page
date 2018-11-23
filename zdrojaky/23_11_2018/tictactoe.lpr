program tictactoe;

type grid = array [0..6, 0..6] of char;
var a: grid;
var i, j: integer;
var Xwin, Owin: boolean;

procedure solve (r, c, x, y: integer);

begin
      if (a[r - x][c - y] = a[r][c]) and (a[r][c] = a[r + x][c + y])
           and (a[r][c] = 'X') then Xwin := true;

      if (a[r - x][c - y] = a[r][c]) and (a[r][c] = a[r + x][c + y])
           and (a[r][c] = 'O') then Owin := true;
end;

begin
     Xwin := false;
     Owin := false;
     for i := 0 to 6 do begin
       for j := 0 to 6 do begin
            a[i][j] := '#';
       end;
     end;

     for i := 1 to 5 do begin
       for j := 1 to 5 do begin
         Read(a[i][j]);
       end;
       ReadLn();
     end;

     for i := 1 to 5 do begin
       for j := 1 to 5 do begin
           solve(i, j, 1, 1);
           solve(i, j, 1, 0);
           solve(i, j, 0, 1);
           solve(i, j, -1, 1);
       end;
     end;

     if Xwin = Owin then Write('REMIZA')
     else if Xwin > Owin then Write('VYHRAL X')
     else Write('VYHRAL O');

     ReadLn();
     ReadLn();
end.

