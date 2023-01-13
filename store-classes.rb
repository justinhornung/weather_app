class Water_bottle
  attr_reader :size, :color, :straw, :price
  attr_writer :straw

  def initialize(input_options)
    @size = input_options[:size]
    @color = input_options[:color]
    @straw = input_options[:straw]
    @price = input_options[:price]
  end

  def add_sales_tax
    @price = 1.06 * @price
  end

  def print_info
    puts "The #{@color} water bottle holds #{@size}oz and costs $#{@price}."
  end
end

waterbottle1 = Water_bottle.new({ size: 64, color: "green", straw: false, price: 50 })
waterbottle2 = Water_bottle.new({ size: 32, color: "pink", straw: true, price: 28 })
waterbottle3 = Water_bottle.new(size: 40, color: "white", straw: true, price: 35)

waterbottle1.print_info
waterbottle2.print_info
waterbottle3.print_info

p waterbottle1.add_sales_tax
p waterbottle2.add_sales_tax
p waterbottle3.add_sales_tax
