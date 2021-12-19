file = File.open("day02_data.txt")
file_data = file.readlines.map(&:chomp)

hor = 0
depth = 0

file_data.each do |str|
  data = str.split(' ')
  dir, distance = data
  case dir
  when "up"
    depth -= distance.to_i
  when "down"
    depth += distance.to_i
  when "forward"
    hor += distance.to_i
  end
end

p hor, depth, hor * depth