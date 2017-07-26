/
sum = 0;

(1...1000).each do |x|
	if x % 3 == 0 || x % 5 == 0
		sum += x
	end
end

puts sum
/

sum = (1...1000).select { |i| (i%3==0) || (i%5==0) }.inject(:+)
puts sum
sum