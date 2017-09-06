=begin
Summation of primes

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
=end


def is_prime? num
	if num != 2 && num % 2 == 0
		return false
	end
	
	x = (num - 1) / 2	
	i = 3
	while i < x
		if num % i ==0
			return false
		end
		i += 1
	end
	true
end

start_time = Time.now

max = 2000000

sum = (2..max).select{ |num| is_prime? num }.inject(:+)
puts "Summation of primes below #{max}: #{sum}"

end_time = Time.now

#may want to optimize the is_prime? method as the whole calculation takes 2089361ms
puts "Time for completion: #{((end_time - start_time) * 1000.0).round(2)}ms"