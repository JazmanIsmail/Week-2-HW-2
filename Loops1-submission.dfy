// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// You got this!!
//
// END-TODO(Name)



/* == Book exercise 11.0 ==
 * For each of the following uses of loop specifications, indicate whether or
 * not the loop-use proof obligation is met and whether or not the assertion
 * following the loop can be proved to hold. */

/* (b)
 * x := 20;
 * while 10 < x
 *     invariant x % 2 == 0
 * assert x == 10; */
method TestB()
// BEGIN-TODO(TestB)
{
    var x: int;
    x := 20;
    while 10 < x
        invariant x % 2 == 0
    {
        x := 10; // Is this allowed? To assign this like this?
    }
    assert x == 10;
}
// END-TODO(TestB)


/* (c)
 * x := 20;
 * while x < 20
 *     invariant x % 2 == 0
 * assert x == 20; */
method TestC()
// BEGIN-TODO(TestC)

{
    var x: int;
    x := 20;
    while x > 20
        invariant x % 2 == 0
    {
        // Is empty body allowed?
    }
    assert x == 20;
}


// END-TODO(TestC)


/* (g)
 * x := 0;
 * while x < 100
 *     invariant 0 <= x < 100
 * assert x == 25; */
method TestG()
// BEGIN-TODO(TestG)
// Add the specification and the method body here.

// The ex. will never hold since in the termination x >= 100 && 0 <= x < 100 need to hold
// and this is not possible so the termination can be asserted to false

{
    var x: int;
    x := 0;
    while x < 100
        decreases 99 - x
        invariant 0 <= x < 100
    {
        if (x < 99) {
            x := x + 1;
        } else {
            x := 100;
        }
    }
    assert x == 25;
}

// END-TODO(TestG)