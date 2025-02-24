// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// You got this!!
//
// END-TODO(Name)



/* == Handout question 3.6 ==
 * Calculate the following weakest preconditions and simplify the result. Test
 * where possible your calculation in Dafny, using that
 * 
 * assume W;
 * S;
 * assert P;
 *
 * should verify, where W is WP(S, P). */

/* (a) WP(x := 3y − 2x, x <= y) */
method A(x: int, y: int) returns (x': int)
// BEGIN-TODO(MethodA)
    requires y <= x
    ensures x' <= y
{
    assert y <= x;
    x' := 3*y - 2*x;
    assert x' <= y;
    
}
// END-TODO(MethodA)


/* (e) WP(m := n; n := n + 1; forall i | 0 <= i < n :: s[i] <= s[m])
 * given that `forall i | 0 <= i < n :: s[i] <= s[n]` */
// BEGIN-TODO(MethodE)
// Add the specification and the method body here.
method E(m: int, n: int, s: seq<int>) returns (m': int, n': int)
    requires |s| > n
    requires forall i | 0 <= i < n :: s[i] <= s[n]
    ensures 0 <= n' <= |s|
    ensures 0 <= m' < |s|
    ensures forall i | 0 <= i < n' :: s[i] <= s[m']
{
    m' := n;
    n' := n + 1;

    assert forall i | 0 <= i < n :: s[i] <= s[n];
    assert s[n] <= s[m'];  
    assert forall i | 0 <= i < n' :: s[i] <= s[m']; 
}
// END-TODO(MethodE)