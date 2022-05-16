// set up

fn name (n: ) ->  {
    todo!()
}

// tests

#[cfg(test)]
mod tests {
    use rand::{thread_rng, Rng};
    use super::name;

    fn reference_solution  {

    }

    #[test]
    fn fixed_tests() {
        assert_eq!(name({}), {});
    }
    
    #[test]
    fn random_tests() {
        let mut rng = thread_rng();
        for _i in 0..100 {
            let mut n = rng.gen_range(min..max);
            assert_eq!(name(n), reference_solution(n));
        }
    }
}
