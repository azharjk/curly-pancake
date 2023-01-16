Program ReverseInteger;

Var
  CurrentInput: Integer;
  NextInput: Integer;
  DInput: Integer;

Begin
  ReadLn(CurrentInput);

  DInput := CurrentInput Mod 10;
  NextInput := CurrentInput Div 10;

  While DInput <> 0 Do
    Begin
      Write(DInput);
      DInput := NextInput Mod 10;
      NextInput := NextInput Div 10;
    End;
End.