require 'date'

def friday_13th?(year)
  count = 0
  (1..12).each { |month| count += 1 if Date.new(year, month, 13).friday? }
  count
end

puts friday_13th?(2015) == 3
puts friday_13th?(1986) == 1
puts friday_13th?(2019) == 2
