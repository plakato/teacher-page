program Kombicislo;
   var n, n_fakt, k, k_fakt, n_k, n_k_fakt, i, j, l, u, v, w, vysledek: integer;

begin
  read(n, k);
  n_k:=n-k;
  n_fakt:=1;
  k_fakt:=1;
  n_k_fakt:=1;

  for i:=n downto 1 do
  begin
       n_fakt:=n_fakt*i;
  end;
  for j:=l downto 1 do
  begin
       k_fakt:=k_fakt*j;
  end;
  for l:=n_k downto 1 do
  begin
       n_k_fakt:=n_k_fakt*l;
  end;
  vysledek:= n_fakt div (k_fakt * n_k_fakt);
  writeln(vysledek);
  readln();
  readln();
end.




