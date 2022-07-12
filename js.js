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
