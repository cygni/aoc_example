puts "Crystal"
ENV["part"] == "part1" ? part1 : part2

def part1
  content = File.read("input.txt")
  res = 0 
  content.each_line do |line|
    first_half = line.byte_slice(0, line.size//2).split(//).to_set
    second_half = line.byte_slice(line.size//2, line.size).split(//).to_set
    combined = first_half & second_half
    res += combined.first[0].ord > 90 ? combined.first[0].ord-97+1  : combined.first[0].ord-65+27
  end
  puts res
end

def part2
  content = File.read("input.txt")
  res2 = 0
  content.each_line.each_slice(3) do |group|
    group1 = group[0].split(//).to_set
    group2 = group[1].split(//).to_set
    group3 = group[2].split(//).to_set
    combined = group1 & group2 & group3
    res2 += combined.first[0].ord > 90 ? combined.first[0].ord-97+1  : combined.first[0].ord-65+27
  end
  puts res2
end