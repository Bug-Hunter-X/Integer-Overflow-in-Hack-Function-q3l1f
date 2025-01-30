# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple Hack program. The `bar` function calculates `(x + 1) * 2`, but if `x` is large enough, the addition in `foo` can overflow before the multiplication, producing an incorrect result.  The solution demonstrates safe handling of potential integer overflow.