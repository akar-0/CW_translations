// https://www.codewars.com/kumite/62cfc49cde31a7003e9642bf?sel=62cfc49cde31a7003e9642bf

// https://docs.codewars.com/languages/cpp/igloo/stringizers

// https://docs.codewars.com/languages/cpp/authoring/#custom-assertion-messages


#include <ctime>
#include <cstdlib>
#include <string>  
#include <sstream>  

void dotest(int n, int expected) {
  int actual = NAME(n);
  std::stringstream ss;
  ss << "Test failed with n = " << n << std::endl;
  Assert::That(actual, Equals(expected), ExtraMessage(ss.str()));
}

Describe(tests)
{
    It(sample_tests)
    {
        dotest({}, {});
    }
  
    It(random_tests)
    {
        srand(time(NULL));
        for(int i = 0; i < 100; i++) {
            int n = 6 + std::rand() % 149995;
//            dotest(n, referenceSolution(n));
        }
    }
};
