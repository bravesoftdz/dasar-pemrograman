program Min_Sort;
uses    crt;
const   Nmax = 100;
type
    TabInteger = array[1..NMax] of integer;
var
    TabInt : TabInteger;
    jml_data,i : integer;
    procedure InputData(n: integer; var T : TabInteger);
    var
        i : integer;
    begin
        for i := 1 to n do
            begin
                write('Nilai ke - ',i,' : ');readln(T[i]);
            end;
    end;
    procedure MinSort(n : integer;var T :TabInteger);
    var
        i,k,imin,temp: integer;
    begin
        for i := 1 to (n-1) do
            begin
                imin := 1;
                for k := 2 to i do
                    begin
                        if (T[k] < T[imin]) then
                            imin := k;
                    end;
                temp     := T[i];
                T[i]     := T[imin];
                T[imin] := temp;
            end;
    end;
begin
    clrscr;
    write('Banyaknya integer : ');readln(jml_data);
    InputData(jml_data,TabInt);writeln;
    MInSort(jml_data,TabInt);
    for i := 1 to jml_data do
        write(TabInt[i],' ');
    readln;
end.
