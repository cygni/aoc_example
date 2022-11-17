import Foundation

@main
public struct AoC {
    let input: [Int]
    
    init(_ data: [Int]) {
        self.input = data
    }
    
    public static func main() {
        let part = ProcessInfo.processInfo.environment["part"] ?? "part1"
        let input = parse(file: "input.txt")
        
        if part == "part2" {
            print(AoC(input).getSolutionPart2())
        } else  {
            print(AoC(input).getSolutionPart1())
        }
    }
    
    static func parse(file filename: String) -> [Int] {
        guard let content = try? String(contentsOfFile: filename) else {fatalError("Error parsing file \(filename)")}
            
        return content.components(separatedBy: .newlines).compactMap{Int($0)}
    }
    
    func getSolutionPart1() -> Int {
        return input.reduce(0, +)
    }

    func getSolutionPart2() -> Int {
        return input.reduce(1, *)
    }
}
