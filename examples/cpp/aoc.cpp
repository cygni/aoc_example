#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

std::vector<int> read_input() {
  vector<int> result;
  ifstream input_file("input.txt");
  string line;

  while (getline(input_file, line)) {
    istringstream iss(line);
    int a;
    if (!(iss >> a)) break; // If error then break
    result.push_back(a);
  }

  return result;
}

int solve1(vector<int> input) {
  int sum = 0;
  for(auto & n : input) {
    sum += n;
  }
  return sum;
}

int solve2(vector<int> input) {
  int prod = 1;
  for(auto & n : input) {
    prod *= n;
  }
  return prod;
}

int main() {
  std::vector<int> input = read_input();

  cout << "C++" << endl;

  char* part = getenv("part");
  if (part == NULL) {
    printf("%d\n", solve1(input));
  } else if (string(part) == "part1") {
    printf("%d\n", solve1(input));
  } else if (string(part) == "part2") {
    printf("%d\n", solve2(input));
  } else {
    cout << "Unknown part" << endl;
  }

  return 0;
}
