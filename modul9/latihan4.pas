program PencarianMahasiswa;
uses crt;
const NMax = 100;
type
    Mahasiswa = record
                    NIM     : string;
                    Nama    : string[25];
                    Nilai   : string;
                end;

    DataMHS = array[1..NMax]of Mahasiswa;
var
    Data : DataMHS;
    i,jummhs,idx,menu :integer;
    ketemu : boolean;
    search,jenis : string;
    procedure InputData(a:integer; var TabMhs : DataMHS);
    var
        i : integer;
    begin
        for i := 1 to a do
        begin
            writeln('Nilai ke - ',i,' : ');
            write('Nama : ');readln(TabMhs[i].Nama);
            write('NIM  : ');readln(TabMhs[i].nim);
            write('Nilai: ');readln(TabMhs[i].nilai);
        end;
    end;
    procedure Searchseq(max : integer;Tab : DataMHS;search:string;var jenis : string;var idx : integer;var ketemu : boolean);
    var
        i : integer;
    begin
        i := 1;
        ketemu := false;
        while(i<=max) and (not ketemu) do
            begin
                if (Tab[i].NIM = search) then
                    begin
                        idx := i;
                        jenis := 'NIM';
                        ketemu := true;
                    end
                else
                if (Tab[i].Nama = search) then
                    begin
                        idx := i;
                        jenis := 'nama';
                        ketemu := true;
                    end
                else
                    i := i+1;
            end;
    end;
begin
    write('Banyaknya Data : ');readln(jummhs);
    InputData(jummhs,Data);
    write('Data yang akan dicari : ');readln(search);
    Searchseq(jummhs,Data,search,jenis,idx,ketemu);
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
                end
                else
            writeln('Data tidak ditemukan!!!');

    readln;
end.
