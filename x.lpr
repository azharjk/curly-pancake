Program X3;

Var
  A: Integer;
  B: Integer;
  C: Integer;

Function F(A, B, C: Integer): Double;
Begin
  F := (A*A*A + A*A * Sqrt(B)) / (2 - C);
End;

Begin
  ReadLn(A);
  ReadLn(B);
  ReadLn(C);

  WriteLn(F(A, B, C));
End.