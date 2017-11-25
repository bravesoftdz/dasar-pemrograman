program Bubble_Sort;
uses    crt;
const   Nmax = 100;
type
    TabInteger = array[1..NMax] of integer;
var
    TabInt : TabInteger;
    i,jml_data : integer;
    procedure InputData(n: integer; var T : TabInteger);
    var
        i : integer;
    begin
        for i := 1 to n do
            begin
                write('Nilai ke - ',i,' : ');readln(T[i]);
            end;
    end;
    procedure BubleSort(n : integer;var T :TabInteger);
    var
        pass, k , temp : integer;
    begin
        for pass := (n-1) downto 1 do
            for k := (pass+1) to n do
                if T[k] < T[k-1] then
                    begin
                        temp := T[k];
                        T[k] := T[k-1];
                        T[k-1] := temp;
                    end;
    end;
begin
    clrscr;
    write('Banyaknya integer : ');readln(jml_data);
    InputData(jml_data,TabInt);writeln;
    BubleSort(jml_data,TabInt);
    for i:= 1 to jml_data do
        write(TabInt[i],' ');
    readln;
end.
