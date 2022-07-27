// setup

package kata

import (
  "" 
)

func Name(n int) int {
      // your code here
}



// tests


package kata_test
import (
  . "github.com/onsi/ginkgo"
  . "github.com/onsi/gomega"
  . "codewarrior/kata"
  "math/rand"
  "time"
)

func dotest(n, expected int) {
     Expect(NAME(n)).To(Equal(expected), "With n = %d", n)
}

var _ = Describe("Tests", func() {
     It("Sample tests", func() {
       dotest({}, {})
     })
     It("Random tests", func() {
       rand.Seed(time.Now().UTC().UnixNano())
       for i := 0 ; i < 100 ; i++ {
         n := rand.Intn()
         dotest(n, referenceSolution(n))
       }
     })
})



// Preloaded
// https://www.codewars.com/kumite/62913108b951ddb15cb32a49?sel=62913108b951ddb15cb32a49



// format IT
// https://www.codewars.com/kumite/62954df52325a5000f1ae1a2?sel=6295a69813690400245fe50d

// approxEquals
// https://www.codewars.com/kumite/62c6c4129012c30017decaa0?sel=62c6c4129012c30017decaa0


func assertApproxEquals(actual, expected, margin float64) (passed bool) {
  if expected == 0 {
    passed = math.Abs(actual) <= margin
  } else {
    passed = math.Abs((actual - expected) / expected) <= margin
  }
  if ! passed {
    fmt.Printf("Expected value close to %f, but got %f", expected, actual)
  }
  return
}

func dotest(s, f string, expected float64) {
     Expect(assertApproxEquals(NAME(s,f),expected, 1e-3)).To(BeTrue())
}


// (..., error)
// https://www.codewars.com/kumite/5beeecefd0253f259e0002c3?sel=5beeecefd0253f259e0002c3
// https://www.codewars.com/kumite/62bd7db1aced6310e237a3d8?sel=62bd7db1aced6310e237a3d8


// pass functions, count calls
// https://www.codewars.com/kata/62c68f0920d291001737fa22/solutions/go
