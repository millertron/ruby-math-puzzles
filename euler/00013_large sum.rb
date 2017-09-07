=begin

Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
*datafile*

=end

#There are hundred numbers to sum so we should only need to add the first 10 + 2 digits

precision = 10
data = Array.new

#IO readlines reads file and returns an array but doesn't split by linebreaks
#so I had to add a comma in the data as delimiter
data = IO.readlines("./00013_data.txt", "r")[0].split(",")
sum = 0


data.each do |num|
	sum += num.to_i
end

puts sum.to_s[0...precision]
