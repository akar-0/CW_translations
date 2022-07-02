// set up

fn name(n: ) -> {
    todo!()
}

// tests


#[cfg(test)]
mod tests {
    use rand::{thread_rng, Rng};
    use super::NAME;
    
    fn reference_solution() {

    }
    
    const ERR_MSG: &str = "\nYour result (left) did not match the expected output (right)";
    
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
//            let n = rng.gen_range(min..max);
//            dotest(n, reference_solution(n));
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

// dotest accepts Vec<&str> or Vec<String>
// !!!!!!
// https://www.codewars.com/kata/reviews/62c0089b4830050001d3cd5e/groups/62c023ab6a137000018b6f07
    fn dotest<S>(s: &str, mut expected: Vec<S>) 
    where S: AsRef<str> + std::cmp::Ord + std::fmt::Debug,
          std::string::String: std::cmp::PartialEq<S> 
    {
        
// https://www.codewars.com/kumite/628a38db97efa50023249931?sel=62aaf6d2732360000fb6a7ed
