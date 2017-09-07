=begin
Longest Collatz sequence

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

start_number = 1000000

longest_sequence = Array.new

def generate_collatz_sequence start_number
	num = start_number
	sequence = [start_number]
	while 1
		if num % 2 == 0
			num = num / 2
		else
			num = 3*num + 1
		end
		if (sequence.include? num)
			break;
		else
			sequence << num
		end
	end
	sequence
end

start_time = Time.now
start_number.downto(1).each do |num|
	sequence = generate_collatz_sequence num
	if (sequence.size > longest_sequence.size)
		longest_sequence = sequence
	end
end
end_time = Time.now
puts "Longest Collatz sequence that starts below #{start_number} - sequence starts at #{longest_sequence[0]}, size #{longest_sequence.size}"
puts "Time to completion: #{((end_time - start_time) * 1000.0).round(2)}ms"