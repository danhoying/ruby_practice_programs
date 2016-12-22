leap_years = 0

puts "LEAP YEAR CALCULATOR"
puts ""
puts "Input a starting year"
start_year = gets.chomp.to_i
puts "Input an ending year"
end_year = gets.chomp.to_i

while start_year <= end_year
     if start_year % 4 == 0 and start_year % 100 != 0
          leap_years += 1
          start_year += 1
     elsif start_year % 100 == 0 and start_year % 400 == 0
          leap_years += 1
          start_year += 1
     else
          start_year += 1
     end
end

puts "Total leap years: " + leap_years.to_s
