program sequential_search;
const Nmax=100;
type
    TabInteger = array[1..Nmax] of integer;
var
    TabInt : TabInteger;
    jml_data,x,i,idx,data : integer;
    ketemu : boolean;
    procedure InputData(a:integer;var Tab : TabInteger);
    begin
        for i := 1 to a do
        begin
            write('Nilai ke - ',i,' : ');
            readln(Tab[i]);
        end;
    end;
    procedure SeqSearch(T : TabInteger; n,x : integer;
                        var j : Integer; var found : boolean);
    var 
        i:integer;
    begin
        i := 1;
        j:=0;
        found := false;
        while(i<=n) do
            begin
                if T[i] = x then 
                    begin
                        found := true;
                        j:=j+1;
                    end;            
                else
                    i:=i+1;
            end;
    end;
begin
    write('Banyaknya Data : ');readln(jml_data);
    InputData(jml_data,TabInt);
    write('Data yang akan dicari : ');readln(x);
    SeqSearch(TabInt,jml_data,x,data,ketemu);
    if ketemu := true then
        write('data ditemukan!!! Ada ',data,'nilai yang sama')
    else
        write('data tidak ditemukan!!!!');
    readln;
end.