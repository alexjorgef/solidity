contract C {
    /// TestCaseFunctionSelector : functionSelector
  function f() public pure {
     /// TestCase1: isSimpleCounterLoop
     for(uint i = 0; i < 42; ++i) {
     }
     /// TestCase2: isSimpleCounterLoop
     for(uint i = 1; i < 42; i = i * 2) {
     }
  }
  function g() public pure  {
      /// TestAssignment: initialValue.leftExpression.typeDescriptions.typeString
      uint x = 1 + 1;
      /// TestCase4: condition.operator
      if (x < 0)
        revert("Error!");
  }
}

contract D {
    /// TestCase3: kind
    function f() public pure {}
}
// ----
// TestAssignment: int_const 1
// TestCase1: true
// TestCase2: false
// TestCase3: function
// TestCaseFunctionSelector: 26121ff0
// TestCase4: <
