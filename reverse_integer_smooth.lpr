Program ReverseIntegerSmooth;

Var
  CurrentInput: Integer;
  NextInput: Integer;
  DInput: Integer;
  Output: Integer;

Begin
  ReadLn(CurrentInput);

  DInput := CurrentInput Mod 10;
  NextInput := CurrentInput Div 10;
  Output := 0;

  While DInput <> 0 Do
    Begin
      Output := Output * 10 + DInput;
      DInput := NextInput Mod 10;
      NextInput := NextInput Div 10;
    End;

  WriteLn(Output);
End.