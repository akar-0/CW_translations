// https://www.codewars.com/kumite/62961ed9fc63659ebf1808b1?sel=62961ed9fc63659ebf1808b1
//https://www.codewars.com/kumite/62cf1289bf218d8f23bd1a40/edit


// !!!!
// https://www.codewars.com/kumite/62e6a62a323f44ce8b546057?sel=62e6a62a323f44ce8b546057

// https://www.codewars.com/kumite/62f81b6f3afaff0017696ea6?sel=62f81b6f3afaff0017696ea6

// approx equals
// https://www.codewars.com/kumite/62df94914c75c1003b9a3c77?sel=62df94914c75c1003b9a3c77
#include <criterion/criterion.h>
#include <math.h>

extern double arrow_area(unsigned, unsigned);

void dotest(unsigned a, unsigned b, double expected) {
  double actual = arrow_area(a, b);
  double err = fabs(actual - expected) / expected;
  cr_assert(err < 1e-6, "With a = %u, b = %u\nExpected approximatively %f but got %f (error: %f)", a, b, expected, actual, err);
}
