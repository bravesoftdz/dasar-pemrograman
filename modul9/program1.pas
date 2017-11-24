program sequential_search;
const Nmax=100;
type
    TabInteger = array[1..Nmax] of integer;
var
    TabInt : TabINteger;
    jml_data,x,i : integer;
begin
    write('Banyaknya Integer : '); readln(jml_data);
    for i := 1 to jml_data do
        begin
            write('Nilai ke - ',i,' : ');
            readln(TabInt[i]);
        end;
    write('Data yang akan dicari : '); readln(x);
    i := 1;
    while (i<jml_data) and (TabInt[i]<>x) do
        if TabInt[i] = x then
            writeln('Data ditemukan pada posisi ke - ',i);
        else
            writeln('Data tidak ditemukan!');
    readln;
end.