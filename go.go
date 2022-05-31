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


var _ = Describe("Tests", func() {
     It("Sample tests", func() {
       Expect(NAME({})).To(Equal({}))
     })
     It("Random tests", func() {
       rand.Seed(time.Now().UTC().UnixNano())
       for i := 0 ; i < 100 ; i++ {
         n := min + rand.Intn(max - min + 1)
         Expect(NAME()).To(Equal(referenceSolution()))
       }
     })
})



// Preloaded
// https://www.codewars.com/kumite/62913108b951ddb15cb32a49?sel=62913108b951ddb15cb32a49



// format IT
// https://www.codewars.com/kumite/62954df52325a5000f1ae1a2?sel=6295a69813690400245fe50d
