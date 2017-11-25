program Max_Sort;
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
    procedure MaxSort(n : integer;var T :TabInteger);
    var
        i,k,imaks,temp: integer;
    begin
        for i := n downto 2 do
            begin
                imaks := 1;
                for k := 2 to i do
                    begin
                        if (T[k] < T[imaks]) then
                            imaks := k;
                    end;
                temp     := T[i];
                T[i]     := T[imaks];
                T[imaks] := temp;
            end;
    end;
begin
    clrscr;
    write('Banyaknya integer : ');readln(jml_data);
    InputData(jml_data,TabInt);writeln;
    MaxSort(jml_data,TabInt);
    for i := 1 to jml_data do
        write(TabInt[i],' ');
    readln;
end.
