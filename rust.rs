// set up

fn name(n: ) -> {
    todo!()
}

// tests


// Add your tests here.
// See https://doc.rust-lang.org/stable/rust-by-example/testing/unit_testing.html

#[cfg(test)]
mod tests {
    use rand::{thread_rng, Rng};
    use super::NAME;
    
    const ERR_MSG: &str = "\nYour result (left) did not match the expected output (right)";

    fn reference_solution() {

    }
    
    fn dotest(n: i32, expected: i32) {
        assert_eq!(NAME(n), expected, "{ERR_MSG} with n = {n}")   
    }

    #[test]
    fn fixed_tests() {
        dotest({}, {});
    }
    
    #[test]
    fn random_tests() {
        let mut rng = thread_rng();
        for _ in 0..100 {
            let n = rng.gen_range(min..max);
            dotest(n, reference_solution(n));
        }
    }
}



// shuffle


    use rand::seq::SliceRandom;



        let mut rng = thread_rng();
        let mut xs = (0..500).collect::<Vec<usize>>();
        xs.shuffle(&mut rng);

// return static string -> &'static str 
// https://www.codewars.com/kumite/62912d0258d87b00168c9f52?sel=6291381158d87bd4458c8492


// advanced random
// https://www.codewars.com/kumite/62a87515936a4a003d0b5ebd?sel=62a87515936a4a003d0b5ebd
