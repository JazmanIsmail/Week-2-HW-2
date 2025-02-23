// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// You got this!!
//
// END-TODO(Name)



/* == Book exercise 11.6 ==
 * Consider the following program fragment:
 *
 * x := 0;
 * while x < 100
 * {
 *     x := x + 3;
 * }
 * assert x == 102;
 *
 * Write a loop invariant that holds initially, is maintained by the loop body,
 * and allows you to prove the assertion after the loop. */
method Solution()
// BEGIN-TODO(Solution)
{
    var x: int;
    x := 0;
    while x < 100
        // Needs to check x is divisible by 3 (to reach exactly 102) and that it stops
        // at 102
        invariant x % 3 == 0 && 0 <= x < 103
    {
      x := x + 3;
    }
    assert x == 102;
}
// END-TODO(Solution)