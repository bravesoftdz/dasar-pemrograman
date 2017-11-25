program sequential_search;
uses crt;
const Nmax=100;
type
    TabInteger = array[1..Nmax] of integer;
var
    TabInt : TabINteger;
    jml_data,x,i,idx : integer;
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
begin
    clrscr;
    write('Banyaknya Data : ');readln(jml_data);
    InputData(jml_data,TabInt);
    write('Data yang akan dicari : ');readln(x);
    SeqSearch(TabInt,jml_data,x,idx,ketemu);
    if ketemu = true then
        write('data ditemukan pada indeks ke - :',idx)
    else
        write('data tidak ditemukan');
    readln;
end.
