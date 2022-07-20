var = 'milk'

var.split('').each_with_index do |n, idx|
  puts n
  puts idx
end

# var_one = 8
# var_one += 1
# puts var_one

def output(number)
  var = ["Premium", "Standard", "Delux", "Executive", "StakeHolder"]
  var[rand(0..4)]
end

puts output(2)
# puts var.split('')