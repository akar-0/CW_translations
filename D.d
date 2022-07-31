import  std.range : chain, enumerate, only, repeat;
import  std.algorithm.iteration : filter, joiner, map;
import  std.array : array, join;
import  std.conv : to;
import  std.string : format, stripRight;

import std.algorithm.searching : all, any, canFind, count, maxElement;
import  std.algorithm.iteration : filter, map;
import std.range : enumerate, iota, repeat;
import ;
import ;
import ;
import ;

// shuffle
// https://www.codewars.com/kumite/62dc17a2b86e07005c8b4ddb?sel=62dc17a2b86e07005c8b4ddb
// bigint
// https://www.codewars.com/kumite/620a7ab957240a00493120d9?sel=620a7ab957240a00493120d9
// https://www.codewars.com/kata/5541f58a944b85ce6d00006a/solutions
// bigint, divmod
// https://www.codewars.com/kumite/62e2a5ec29618a0017bc3b3c?sel=62e2a5ec29618a0017bc3b3c
// zip
// https://www.codewars.com/kata/reviews/624afab6be5665000102283c/groups/624b2120be56650001023426

// hashmap, translate
// https://www.codewars.com/kata/5d98b6b38b0f6c001a461198/solutions/d

// map
// https://www.codewars.com/kata/reviews/61f5160f88ed97000142f30f/groups/61f5251cfb076500017a16f7
// https://www.codewars.com/kata/reviews/6214a08403fdaa00016d7020/groups/62a1dad13f388000010c4384

// approx equals
// https://www.codewars.com/kumite/62de442c7850d60059b1302a?sel=62de442c7850d60059b1302a

// reduce iota popcnt
// https://www.codewars.com/kumite/62debec714c77d7927d589b0?sel=62debec714c77d7927d589b0
// rb trees. array map range...
// https://www.codewars.com/kumite/62ded5eda7e5690028d1688e?sel=62ded5eda7e5690028d1688e
// https://www.codewars.com/kumite/62e553619db63bacf6f3ca95?sel=62e553619db63bacf6f3ca95
// sort uniq filter canfind
// https://www.codewars.com/kata/reviews/6251764cc522ea0001d6d263/groups/62b0923f38a9750001f775c0

// alias lambda  tuples
// https://www.codewars.com/kumite/62e11b7ab3d2c518e6f59ee7?sel=62e11b7ab3d2c518e6f59ee7
// safe overflow
// https://www.codewars.com/kumite/62e13be319d25c003b5c3a20?sel=62e13be319d25c003b5c3a20
// tuple expand
// https://www.codewars.com/kumite/62e17b077c4a53000eacb48c?sel=62e17b077c4a53000eacb48c
// any
// https://www.codewars.com/kumite/62e17b077c4a53000eacb48c?sel=62e17b077c4a53000eacb48c
// sort string, retro, zip, insertInPlace, dropOne, find
// https://www.codewars.com/kumite/62e19bc419d25c00435c4593?sel=62e19bc419d25c00435c4593
// immutable global array
// https://www.codewars.com/kumite/62e27fc15d64d4003db391b4?sel=62e27fc15d64d4003db391b4
// only = iter once
// https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/solutions/d
// memoize remove pop dropBack reduce indexof = countuntil
// https://www.codewars.com/kumite/62e2ce0729618a1a55bc1735?sel=62e2ce0729618a1a55bc1735
// sort swap stragegy stable
// https://www.codewars.com/kumite/62dfa30d412915005d0de4d8?sel=62dfa30d412915005d0de4d8
// sequence infinite range
// https://www.codewars.com/kata/537ba77315ddd92659000fec/solutions/d
// immutable hash
// https://www.codewars.com/kata/reviews/620e6d33f6f3a8000129d7fb/groups/62dc6a9cc166ac0001e6d272
// randomize srings, shufflee.... swapcase
// https://www.codewars.com/kumite/62e553619db63bacf6f3ca95?sel=62e553619db63bacf6f3ca95
// find string form
// https://www.codewars.com/kata/585d7d5adb20cf33cb000235/solutions/d
// regex
// https://www.codewars.com/kata/reviews/62e2b3a7e356dc0001fd9e3a/groups/62e2bd5818cee8000141bf77



module solution;

export int NAME(int n) 
{
    throw new Exception("not implemented");
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

@("Random tests")
unittest
{
    import std.random : Random, unpredictableSeed, uniform;
    auto rnd = Random(unpredictableSeed);
    foreach(_; 0 .. 100)
    {
        uint n = uniform(1, 500, rnd);
//        dotest(n, referenceSolution(n));
    }
}








// Generate random array
    
    import std.random : Random, unpredictableSeed, uniform;
    auto rnd = Random(unpredictableSeed);
    foreach(_; 0 .. 100 )
    {
        auto arr =
            iota(0, uniform(0,50))
            .map!(_ => uniform(int.min, int.max, rnd) )  // throws source/solution_test.d(51,46): Error: variable `rnd` cannot be read at compile time without ` _=>
            .array;
        dotest(arr, referenceSolution(arr));
    }

// random string

    import std.random : Random, unpredictableSeed, uniform;
    import  std.algorithm.iteration : map;
    import std.range : iota;
    import std.conv : to;
    auto rnd = Random(unpredictableSeed);
    foreach(_; 0 .. 100)
    {
        auto s = 
            iota(0, uniform(1, 1001, rnd))
            .map!(_ => cast(char) uniform(32, 127))
            .to!string;
        dotest(s, referenceSolution(s));
    }


range[uniform(0, range.length)];
<=>
range[uniform(0, $)];


// deepcopy 2d-array const
    auto res = m.map!(x => x.dup).array;

