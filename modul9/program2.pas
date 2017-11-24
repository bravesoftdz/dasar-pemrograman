program sequential_search2;
uses crt;
const Nmax = 100;
type
    TabInteger = array[1..NMax] of integer;
var
    TabInt:TabInteger;
    jml_data,data,indeks: integer;
    cari : char;
procedure InputData(n : iteger; var T : TabInteger);
    var
        i : integer;
    begin
        for i := 1 to n do
            begin 
                write('Nilai ke - ',i,' : ');
                readln(T[i]);
                end;
    end;
procedure seqsearch(T : TabInteger;n,x : integer; var idx: integer);
    var
        i : integer;
    begin
        i := 1;
        while (i<n) and (T[i] <> x) do
            i:=i+1;
            if T[i] = x then
                idx:=i;
            else
                idx:=0;
    end;
begin
    clrscr;
    write('Banyaknya Integer : ');
    readln(jml_data);
    InputData(jml_data,TabInt);
    repeat
        write('Data yang akan dicari : ');readln(data);
        seqsearch(TabInt,jml_data,data,indeks);
        if indeks=0 then    
            writeln('Data tidak ditemukan')
        else
            writeln('Data ditemukan pada posisi ke - ',indeks);
        write('cari data lagi(y/t) ? ');readln(cari);
    until (cari = 't') or (cari = 'T');
    readln;
end.