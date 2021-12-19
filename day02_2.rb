file = File.open("day02_data.txt")
file_data = file.readlines.map(&:chomp)

hor = 0
depth = 0
aim = 0

file_data.each do |str|
  data = str.split(' ')
  dir, distance = data
  case dir
  when "up"
    aim -= distance.to_i
  when "down"
    aim += distance.to_i
  when "forward"
    hor += distance.to_i
    depth += aim * distance.to_i
  end
end

p hor, depth, hor * depth