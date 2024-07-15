module lang::testlang::Expressions

extend lang::testlang::Layout;
extend lang::exprlang::grammar::Expressions;


start syntax Program = Expr; 

syntax Expr
    = :neq2
    > left hashExp: Expr "#" Expr
    ;