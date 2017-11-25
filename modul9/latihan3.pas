program sequential_search;
uses crt;
const Nmax=100;
type
    TabInteger = array[1..Nmax] of integer;
var
    TabInt : TabInteger;
    jml_data,x,i,max,min,imin,imax : integer;
    ketemu : boolean;
    procedure InputData(a:integer;var Tab : TabInteger);
    begin
        for i := 1 to a do
        begin
            write('Nilai ke - ',i,' : ');
            readln(Tab[i]);
        end;
    end;
    procedure PushData(max : integer;Tab : TabInteger; Var nmax,nmin,imax,imin : integer);
    var i :integer;
    begin
        nmax:=1;
        nmin:=1;
        imax:=1;
        imin:=1;
        for i := 1 to max do
        begin
            if (Tab[i] > Tab[imax]) then
                begin
                    nmax := Tab[i];
                    imax := i;
                end;
            if (Tab[i] < Tab[imin]) then
                begin
                    nmin := Tab[i];
                    imin := i;
                end;
        end;
    end;
begin
    clrscr;
    write('Banyaknya Data : ');readln(jml_data);
    InputData(jml_data,TabInt);
    PushData(jml_data,TabInt,max,min,imax,imin);
    write('Nilai Terbesar adalah ',max);writeln(' Terdapat pada Indeks ke - ',imax);
    write('Nilai Terkecil adalah ',min);writeln(' Terdapat pada Indeks ke - ',imin);

    readln;
end.
