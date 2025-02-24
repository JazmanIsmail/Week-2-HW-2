// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// You got this!!
//
// END-TODO(Name)



/* == Book exercise 2.21 ==
 * Compute the weakest precondition for the following statement with respect to
 * `y < 10`. Simplify the condition.
 *
 *  if x < 8 {
 *      if x == 5 {
 *          y := 10;
 *      } else {
 *          y := 2;
 *       }
 *  } else {
 *      y := 0;
 *  } */
method Ex(x: int, y: int) returns (y': int)
// BEGIN-TODO(Method)
    ensures x >= 8 ==> y' < 10
{
    if x < 8 {
        if x == 5 {
            y' := 10;
        } else {
            y' := 2;
        }
    } else {
        y' := 0;
    }
}
// END-TODO(Method)