Program LinearEquation;

Var
  X: Integer;

Function F(X: Integer): Integer;
Begin
  F := 5*X - 2;
End;

Begin
  ReadLn(X);
  WriteLn(F(X));
End.