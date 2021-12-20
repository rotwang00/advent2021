file = File.open("day03_data.txt")
file_data = file.readlines.map(&:chomp)
 
index = 0

while file_data.size > 1
  
  zeroes = 0
  ones = 0
  
  file_data.each do |str|
    str[index] == "0" ? zeroes += 1 : ones += 1
  end

  if ones >= zeroes
    removed_char = "0"
  else
    removed_char = "1"
  end

  file_data = file_data.select do |str|
    str[index] == removed_char
  end

  index += 1
end

oxygen = file_data[0].to_i(2)
p oxygen


file = File.open("day03_data.txt")
file_data = file.readlines.map(&:chomp)
 
index = 0

while file_data.size > 1
  
  zeroes = 0
  ones = 0
  
  file_data.each do |str|
    str[index] == "0" ? zeroes += 1 : ones += 1
  end

  if ones < zeroes
    removed_char = "0"
  else
    removed_char = "1"
  end

  file_data = file_data.select do |str|
    str[index] == removed_char
  end

  index += 1
end

co2 = file_data[0].to_i(2)
p co2

print oxygen * co2