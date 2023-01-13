require "http"

puts "Welcome to the Weather App!"
puts "Please choose from the following options:\n[H]ourly, [D]aily, 5 Day [F]orecast or [Q]uit"
choice = gets.chomp.downcase
if choice == "h"
  while true
  end
elsif choice == "d"
  while true
    puts "What's the weather in your area?\nEnter two letter country code:\n(Type 'Done' to leave)"
    country = gets.chomp.downcase
    puts "Enter City:"
    city = gets.chomp

    puts "What is your preferred temperature unit? K/C/F?"
    temp_unit = gets.chomp
    if temp_unit.upcase == "C"
      temp_unit = "metric"
    elsif temp_unit.upcase == "F"
      temp_unit = "imperial"
    else
      temp_unit = "standard"
    end

    response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city},#{country}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{temp_unit}")

    weather_data = JSON.parse(response.body)

    puts "TEMPERATURE"
    pp weather_data["main"]["temp"]

    puts "DESCRIPTION"
    pp weather_data["weather"][0]["description"]

    puts "HIGH TEMP"
    pp weather_data["main"]["temp_max"]

    puts "LOW TEMP"
    pp weather_data["main"]["temp_min"]
  end
else
  puts "Thanks for using the Weather App!"
  exit
end
