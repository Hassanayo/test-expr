module lang::exprlang::grammar::Expressions

extend lang::exprlang::grammar::Literals;


syntax Expr
  =  Literal
  | bracket "(" Expr ")"
  > right uMin: "-" Expr
  > left cct: Expr lhs "||" Expr rhs
  > left mul: Expr lhs "*" Expr rhs
  > left div: Expr lhs "/" Expr rhs
  > left modulus: Expr lhs "%" Expr rhs
  > left sub: Expr lhs "-" Expr rhs
  > left add: Expr lhs "+" Expr rhs
  > non-assoc eq: Expr lhs "=" Expr rhs
  > non-assoc twoEqual: Expr lhs "==" Expr rhs
  > non-assoc gt: Expr lhs "\>" Expr rhs
  > non-assoc lt: Expr lhs "\<" Expr rhs
  > non-assoc gte: Expr lhs "\>=" Expr rhs
  > non-assoc lte: Expr lhs "\<=" Expr rhs
  > non-assoc nullSafeEqual: Expr lhs "\<=\>" Expr rhs
  > non-assoc neq1: Expr lhs "!=" Expr rhs
  > non-assoc neq2: Expr lhs "\<\>" Expr rhs
  ;
