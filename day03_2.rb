file = File.open("day03_data.txt")
file_data = file.readlines.map(&:chomp)

data_points = file_data.size

number_of_ones = {
  0 => 0,
  1 => 0,
  2 => 0,
  3 => 0,
  4 => 0,
  5 => 0,
  6 => 0,
  7 => 0,
  8 => 0,
  9 => 0,
  10 => 0,
  11 => 0
}

file_data.each do |str|
  str.chars.each_with_index do |char, index|
    if char == "1"
      number_of_ones[index] += 1
    end
  end
end

p number_of_ones

gamma = ""
epsilon = ""

number_of_ones.map do |_, v|
  if v > data_points / 2
    gamma += "1"
    epsilon += "0"
  else
    gamma += "0"
    epsilon += "1"
  end
end

answer = gamma.to_i(2) * epsilon.to_i(2)

p answer