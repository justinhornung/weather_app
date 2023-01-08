require "TTY-table"

# Water Bottle Store. (Size, color, straw?, price)

water_bottle1 = { :size => "40oz", :color => "white", :straw => true, :price => 35 }
water_bottle2 = { :size => "32oz", :color => "pink", :straw => true, :price => 28 }
water_bottle3 = { size: "64oz", color: "green", straw: false, price: 50 }

puts "This #{water_bottle1[:color]} water bottle holds #{water_bottle1[:size]} of liquid costs $#{water_bottle1[:price]}."
puts "This #{water_bottle2[:color]} water bottle holds #{water_bottle2[:size]} of liquid costs $#{water_bottle2[:price]}."
puts "This #{water_bottle3[:color]} water bottle holds #{water_bottle3[:size]} of liquid costs $#{water_bottle3[:price]}."

table = TTY::Table.new(
  ["ID", "Size", "Color", "Straw?", "Price in $"],
  [
    [water_bottle1[:size], water_bottle1[:color], water_bottle1[:straw], water_bottle1[:price]],
    [water_bottle2[:size], water_bottle2[:color], water_bottle2[:straw], water_bottle2[:price]],
    [water_bottle3[:size], water_bottle3[:color], water_bottle3[:straw], water_bottle3[:price]],
  ]
)

puts table.render(:ascii)

# table.render(:basic)

# table = TTY::Table.new do |t|
#   t << ["a1", "a2"]
#   t << ["b1", "b2"]
# end

puts "[C]reate [R]ead [U]pdate [D]elete [Q]uit"

if letter == "C"
  puts "Enter size:"
  size = gets.chomp
  puts "Enter color:"
  color = gets.chomp
  puts "Does it have a straw? [Y/N]"
  if letter == "Y"
    straw = true
  else
    straw = false
  end
  puts "Enter price:"
  price = gets.chomp.to_i
  table << [size, color, straw, price]
  puts table.render(:ascii)
elsif letter == "R"
  puts table.render(:ascii)
elsif letter == "U"
elsif letter == "D"
elsif letter == "Q"
  puts "Buh-bye, now!"
  exit
else
  puts "Please enter a valid choice."
end
