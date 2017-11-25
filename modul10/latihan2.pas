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
    jml_data,i : integer;
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
    procedure BubleSort(n : integer;var T :TabInteger);
    var
        pass, k , temp : integer;
    begin
        for pass := 1 to (n-1) do
            for k := n downto (pass+1) do
                if T[k].nilai < T[k-1].nilai then
                    begin
                        temp := T[k].nilai;
                        T[k].nilai := T[k-1].nilai;
                        T[k-1].nilai := temp;
                    end;
    end;
begin
    clrscr;
    write('Banyaknya integer : ');readln(jml_data);
    InputData(jml_data,TabInt);writeln;
    BubleSort(jml_data,TabInt);
    writeln('NIM        Nama        Nilai');
        for i := 1 to jml_data do
            begin
                writeln(TabInt[i].nim,'    ',TabInt[i].nama,'    ',TabInt[i].nilai)
            end;
    readln;
end.
