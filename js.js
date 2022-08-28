const chai = require("chai");
const assert = chai.assert;
// Uncomment the following line to disable truncating failure messages for deep equals, do:
// chai.config.truncateThreshold = 0;

describe("Tests", function() {
  it("Fixed tests", function() {
     assert.strictEqual(1 + 1, 2);
  });
  it("Random tests", function() {
     assert.strictEqual(1 + 1, 2);
  });
});


```
%s/Test.\assertEquals/assert.strictEqual/g
%s/Test.\assertSimilar/assert.deepEqual/g
```   
// approxequals
// https://www.codewars.com/kumite/62d7a4a00ba2a6b5942efc51?sel=62d7a4a00ba2a6b5942efc51
