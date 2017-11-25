program Bubble_Sort;
uses    crt;
const   Nmax = 100;
type
    mahasiswa = record
                    nama : string[25];
                    nim : longint;
                    nilai : integer;
                end;
    TabInteger = array[1..NMax] of mahasiswa;
var
    TabInt : TabInteger;
    jml_data,menu,i,x,idx : integer;
    procedure InputData(n: integer; var T : TabInteger);
    var
        i : integer;
    begin
        for i := 1 to n do
            begin
                writeln('Mahasiswa ke - ',i,' : ');
                write('Nama : ');readln(T[i].nama);
                write('NIM  : ');readln(T[i].nim);
                write('nilai: ');readln(T[i].nilai);
            end;
    end;
    procedure MinSort(n : integer;var T :TabInteger);
        var
            i,k,imin,temp: integer;
        begin
            for i := 1 to (n-1) do
                begin
                    imin := 1;
                    for k := (i+1) to n do
                        begin
                            if (T[k].nim < T[imin].nim) then
                                imin := k;
                        end;
                    temp         := T[i].nim;
                    T[i].nim     := T[imin].nim;
                    T[imin].nim  := temp;
                end;
        end;
    procedure binsearch(T : TabInteger; n , x :integer; var idx : integer);
    var
            BatasAtas,BatasBawah,Tengah : integer;
    begin
            BatasAtas :=1;
            BatasBawah := n;
            while (BatasAtas<=BatasBawah) and (T[Tengah].nim<>x) do
                begin
                    Tengah := (BatasAtas+BatasBawah) div 2;
                    if T[Tengah].NIM > x then
                            BatasBawah := Tengah-1
                    else
                            if T[Tengah].NIM<x then
                                BatasBawah := Tengah+1;
                end;
            if T[Tengah].NIM = x then
                idx:=Tengah
            else
                idx:=0;
    end;
begin
    repeat
        clrscr;
        writeln('---------MENU---------');
        writeln('1. Input data');
        writeln('2. Urutkan');
        writeln('3. Mencari');
        readln(menu);
        case menu of
            1 :  begin
                    write('Banyaknya integer : ');readln(jml_data);
                    InputData(jml_data,TabInt);writeln;
                 end;
            2 :  begin
                    MinSort(jml_data,TabInt);
                    writeln('NIM        Nama        Nilai');
                    for i := 1 to jml_data do
                        begin
                            writeln(TabInt[i].nim,'    ',TabInt[i].nama,'    ',TabInt[i].nilai)
                        end;
                 end;
            3 :  begin
                    write('Data yang akan dicari (NIM) : ');readln(x);
                    MinSort(jml_data, TabInt);
                    binsearch(TabInt,jml_data,x,idx);
                    if idx <> 0 then
                        begin
                            writeln('Data ditemukan!!!');
                            writeln('Nama : ',TabInt[idx].nama);
                            writeln('Nilai: ',TabInt[idx].nilai);
                        end
                    else
                        writeln('Data tidak ditemukan!!!');
                 end;
        end;
        readln;
    until (menu = 4);
end.
