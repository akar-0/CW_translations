// shuffle
// https://www.codewars.com/kumite/62dc17a2b86e07005c8b4ddb?sel=62dc17a2b86e07005c8b4ddb



module solution;

export int NAME(int n) 
{
    return 0;
}




module solution_test;

import solution : NAME;
import std.string : format;

version(unittest) import fluent.asserts;

void dotest(int n, int expected)
{
    NAME(n).should.equal(expected).because("n = %d".format(n));
}

@("Basic tests")
unittest {
    dotest({}, {});
    
    
}

@("random tests")
unittest
{
    import std.random : Random, unpredictableSeed, uniform;
    auto rnd = Random(unpredictableSeed);
    for (auto i = 0; i < 50; ++i)
    {
        uint n = uniform(1, 500, rnd);
        dotest(n, referenceSolution(n);
    }
}
