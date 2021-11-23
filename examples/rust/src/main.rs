use std::env;
use std::fs::File;
use std::io::BufReader;
use std::io::BufRead;

fn get_solution_part1(parsed_input: &Vec<i32>) -> i32 {
    return parsed_input.iter().sum();
}

fn get_solution_part2(parsed_input: &Vec<i32>) -> i32 {
    return parsed_input.iter().product();
}

fn read_input_as_integers(path: &str) -> Vec<i32> {
    let file = File::open(path).expect("not found");
    let reader = BufReader::new(file);

    return reader
        .lines()
        .map(|line| line.unwrap().parse::<i32>().unwrap())
        .collect();
}

fn main() {
    let parsed_input = read_input_as_integers("input.txt");
    let part = match env::var("part") {
        Ok(val) => val,
        Err(_e) => "part1".to_string(),
    };

    println!("Rust");
    if part == "part2" {
        println!("{}", get_solution_part2(&parsed_input));
    } else {
        println!("{}", get_solution_part1(&parsed_input));
    }
}
