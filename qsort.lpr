
Program qSort3UAS;

{$MODE OBJFPC}

Const 
  n = 6-1;

Type larik = array Of integer;

Var 
  A: larik;
  i: integer;
  kekiri: boolean;
  file1: TextFile;
Procedure print();

Var 
  i: integer;
Begin
  For i := 0 To n Do
    write(A[i], ' ');
  Writeln();
End;
Procedure tukar(Var a, b:integer);

Var c: integer;
Begin
  c := a;
  a := b;
  b := c;
End;
Function pisah(awal: integer; akhir: integer): integer;

Var 
  pivot, kiri, kanan: integer;
Begin
  pivot := awal;
  kiri := awal;
  kanan := akhir;
  kekiri := true;
  Repeat
    While kekiri And (kiri<kanan) Do
      If (A[pivot]<= A[kanan] ) Then
        Begin
          If (kanan>pivot) Then dec(kanan);
          writeln('pos right geser ke kiri: pos right ', kanan);
          writeln('left ', kiri, ' loc ', pivot, ' right ', kanan);
          write('Urutan data terakhir ');
          print();
        End
      Else
        Begin
          writeln('Tukar elmn ke ', pivot, ' dgn elmn ke ', kanan);
          tukar (A[pivot],A[kanan]);
          write('Urutan data terakhir ');
          print();
          pivot := kanan;
          kekiri := false;
        End;

    While (Not kekiri) And (kiri<kanan) Do
      If (A[pivot]>= A[kiri] ) Then
        Begin
          If (kiri<pivot) Then inc(kiri);
          writeln('pos left geser ke kanan: pos left ', kiri);
          writeln('left ', kiri, ' loc ', pivot, ' right ', kanan);
        End
      Else
        Begin
          write('Urutan data terakhir ');
          print();
          writeln('Tukar elmn ke ', kiri, ' dgn elmn ke ', pivot);
          tukar (A[pivot],A[kiri]);
          write('Urutan data terakhir ');
          print();
          pivot := kiri;
          kekiri := true;
        End;
  Until (kiri=kanan);
  pisah := pivot;
  writeln();
  writeln('Titik pisah ', pisah);
End;
Procedure qsort(awal:integer; akhir:integer);

Var lok: integer;
Begin
  writeln('awal ', awal, ' akhir ', akhir);
  If (awal<akhir) Then
    Begin
      write('Urutan data terakhir ');
      print();
      lok := pisah (awal, akhir);
      qsort(awal,lok-1);
      qsort(lok+1,akhir);
    End;
End;
Begin
  setlength(A,n);
  Try
    writeln('Masukkan 6 bil integer');
    For i := 0 To n Do
      read(A[i]);
    write('larik sblm disortir: ');
    writeln();
    write('Urutan data terakhir ');
    print();
    qSort(0, n);
    write('larik sesudah disortir: ');
    writeln();
    write('Urutan data terakhir ');
    print();
  Finally
    CloseFile(file1);
End;
readln(i);
End.
