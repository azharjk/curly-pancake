Program TrackProgram;

{$MODE OBJFPC}

Var
  N: Integer;
  Jml: Integer;
  I: Integer;
  P: Integer;

Begin
  N := 5;
  Jml := 0;
  I := 1;
  P := 1;

  While I <= N Do
    Begin
      If (I Mod 2) = 0 Then Jml := (Jml - 1) Div P
      Else Jml := (Jml + 1) Div P;
      I := I + 1;
      P := P + 2;
    End;

  WriteLn(Jml);
End.
