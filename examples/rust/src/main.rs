use std::env;

fn getSolutionPart1() -> i32 {
    return 1337;
}

fn getSolutionPart2() -> i32 {
    return 42;
}

fn main() {

    let part = match env::var("part") {
        Ok(val) => val,
        Err(_e) => "part1".to_string(),
    };

    if part == "part2" {
        println!("{}", getSolutionPart2());
    } else {
        println!("{}", getSolutionPart1());
    }
}