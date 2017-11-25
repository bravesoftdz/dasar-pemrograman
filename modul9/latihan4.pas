program PencarianMahasiswa;
uses crt;
const NMax = 100;
type 
    Mahasiswa = record
                    NIM     : longint;
                    Nama    : string[25];
                    Nilai   : integer;
                end;
var
    Data : array[1..NMaks] of Mahasiswa;
    i,jummhs,idx :integer;
    ketemu : boolean;
    menu : char;
    search,jenis : string;
    procedure InputData(a:integer;var Tab : TabInteger);
    begin
        for i := 1 to a do
        begin
            write('Nilai ke - ',i,' : ');
            readln(Tab[i]);
        end;
    end;
    procedure Search(max : integer;Tab : TabInteger;search:string;var jenis : string;var idx : integer;var ketemu : boolean;);
    var
        i : integer;
    begin
        i := 1;
        ketemu := false;
        while(i<=n) and (not ketemu) do
            begin
                if (Tab[i].NIM = search) then
                    begin
                        idx := i;
                        jenis := 'NIM';
                        ketemu := true;
                    end;
                else
                if (Tab[i].Nama = search) then
                    begin
                        idx := i;
                        jenis := 'nama';
                        ketemu := true;
                    end;
                else
                    i := i+1;
            end;
    end;
begin
    repeat
        write('Banyaknya Data : ');readln(jummhs);
        InputData(jml_data,Data);
        write('Data yang akan dicari : ');readln(search);
        Search(jummhs,Data,search,jenis,idx,ketemu);
        if ketemu then
            begin
                if jenis = 'NIM' then
                    begin
                        writeln('Data ditemukan!!!');
                        writeln('Nama : ',Data[idx].nama);
                        writeln('Nilai: ',Data[idx].nilai);
                    end;    
                if jenis = 'nama' then
                    begin
                        writeln('Data ditemukan!!!');
                        writeln('NIM : ',Data[idx].nim);
                        writeln('Nilai: ',Data[idx].nilai);
                    end;
            end;
        else
            writeln('Data tidak ditemukan!!!');
        write('masih ingin mencari ? (y/t)')readln(menu);
    until (menu = 't') and (menu = 'T');
    readln;
end.