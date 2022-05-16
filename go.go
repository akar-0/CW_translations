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

var _ = Describe("Sample tests", func() {
     It("should handle basic cases", func() {
       Expect(Totient({})).To(Equal({}))
     })
     It("should handle random tests", func() {
       rand.Seed(time.Now().UTC().UnixNano())
       for _i := 0 ; _i < 100 ; _i++ {
         n := min + rand.Intn(max - min + 1)
         Expect(Name(n)).To(Equal(referenceSolution(n)))
       }
     })
})
