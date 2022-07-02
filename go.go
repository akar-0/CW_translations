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


func referenceSolution(n int) int {

}

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
         n := min + rand.Intn(max - min + 1)
         dotest(n, referenceSolution(n))
       }
     })
})



// Preloaded
// https://www.codewars.com/kumite/62913108b951ddb15cb32a49?sel=62913108b951ddb15cb32a49



// format IT
// https://www.codewars.com/kumite/62954df52325a5000f1ae1a2?sel=6295a69813690400245fe50d

// approxEquals
// https://www.codewars.com/kumite/62b84a24b16c63004a07503a?sel=62b84a24b16c63004a07503a
// (..., error)
// https://www.codewars.com/kumite/5beeecefd0253f259e0002c3?sel=5beeecefd0253f259e0002c3
// https://www.codewars.com/kumite/62bd7db1aced6310e237a3d8?sel=62bd7db1aced6310e237a3d8
