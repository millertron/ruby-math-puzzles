=begin
Lattice paths

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

=end


=begin
For n x n grid, the length of the path is always 2 x n.
Because we have a binary path option at each node (i.e. right or down)
we can represent each path as a binary string with a length of 2 x n.
There is a restriction on the binary string that is acceptable as a valid lattice path:
The number of zeros and ones in the string must be half and half.

Eg: where n=3, 000111 (dddrrr), 111000 (rrrddd), 101010 (rdrdrd) are valid paths

So the problem is to find the number of allowed binary strings for a given value of n.
=end


n = 15
puts "Lattice size: #{n}"
#acceptable binary string with the smallest value is all zeros on the left side and all zeros on the right eg: 000111 for n = 3
#acceptable binary string with the largest value is all ones on the left side and all ones on the right eg: 111000 for n = 3

min = ("1"*n).to_i(2)
max = (("1"*n)+("0"*n)).to_i(2)
count = 0

start_time = Time.now
puts "Range: #{min} - #{max}, Path Candidates: #{max-min}"
(min..max).each do |num| 
	if (num.to_s(2).count("1") == n)
		count += 1
	end
end
end_time = Time.now
puts "Number of acceptable paths: #{count}"
puts "Time to completion: #{((end_time - start_time) * 1000.0).round(2)}ms"
