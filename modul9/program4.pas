procedure seqsearch(T : TabInteger; n , x :integer; var idx : integer);
var 
        BatasAtas,BatasBawah,Tengah : integer;
begin
        BatasAtas :=1
        BatasBawah := n;
        while (BatasAtas<=BatasBawah) and (T[Tengah]<>x) do
            begin
                Tengah := (BatasAtas+BatasBawah) div 2;
                if T[Tengah] > x then
                        BatasBawah := Tengah-1;
                else
                        if T[Tengah]<x then 
                            BatasBawah := Tengah+1;                    
            end;
        if T[Tengah] = x then 
            idx:=Tengah
        else    
            idx:=0;
end;