module lang::testlang::Test

import lang::testlang::Expressions;

import ParseTree;

bool parseAndImplode(loc code) {
  code_pt = parse(#start[Program], code, filters={});

  // code_ast = implode(#Program, code_pt);
  return true;
}

test bool testExpr() {
  loc query = |project://test-project/src/lang/testlang/expr.ptl|;
  return parseAndImplode(query);
}