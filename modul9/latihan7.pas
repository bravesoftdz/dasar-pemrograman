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
    i,jummhs,idx,menu :integer;
    ketemu : boolean;
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
        writeln('=========Menu========');
        writeln('1. INPUT DATA ');
        writeln('2. CARI DATA');
        writeln('3. OUTPUT DATA');
        readln(menu);
        case menu of 
            1:  begin
                    write('Banyaknya Data : ');readln(jummhs);
                    truncate(Data);
                    InputData(jml_data,Data);
                    end;
            2:  begin                    
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
                end;
            3:  begin
                    for i := 1 to jummhs do
                        begin
                            writeln('Nama        NIM        Nilai');
                            writeln(Data[idx].nama,Data[idx].nim,Data[idx].nilai);
                        end;
                         
                end;
        else
            writeln('Masukan anda salah, keluar....');
        end;
        readln;
end.