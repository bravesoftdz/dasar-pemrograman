procedure SeqSearch2(T : TabInteger; n,x : integer;
                        var idx:integer; var found : boolean);
var 
    i:integer;
begin
    i := 1;
    found := false;
    while(i<=n) and (not found) do
        begin
            if T[i] = x then 
                found := true
            else
                i:=i+1;
        end;
    if found then   
        idx:=i
    else
        idx:=0;
end;