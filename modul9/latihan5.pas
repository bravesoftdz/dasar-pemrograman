program BinarySearch;
const Nmax=100;
type
    TabInteger = array[1..Nmax] of integer;
var
    TabInt : TabINteger;
    jml_data,x,idx: integer;
    procedure InputData(a:integer;var Tab : TabInteger);
    begin
        for i := 1 to a do
        begin
            write('Nilai ke - ',i,' : ');
            readln(Tab[i]);
        end;
    end;
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
begin
    write('Banyaknya Data : ');readln(jml_data);
    InputData(jml_data,TabInt);
    write('Data yang akan dicari : ');readln(x);
    seqsearch(TabInt,jml_data,x,idx);
    write('Data ditemukan pada indeks ke - ',idx);
    readln;
end.