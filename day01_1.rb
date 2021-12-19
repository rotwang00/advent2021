file = File.open("day01_1_data.txt")
file_data = file.readlines.map(&:chomp)
file_data.map!(&:to_i)

counter = 0
file_data.each_with_index do |num, i|
  if i > 2
    sum1 = file_data[i - 3] + file_data[i - 2] + file_data[i - 1]
    sum2 = file_data[i - 2] + file_data[i - 1] + file_data[i]
    if sum2 > sum1
      counter += 1
    end
  end
end

p counter