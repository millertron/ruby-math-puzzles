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

primes = Array.new
(1...10).each do |n|
	if is_prime? n
		primes.push n
	end
end

primes.each do |prime|
	print "#{prime},"
end


input = 600851475143
largest_prime = 1

prime_found = is_prime? input
if prime_found
	largest_prime = input
else

	n = 2

	while n < input / n
		if is_prime? n
			if input % n == 0
				largest_prime = n
			end
		end
		n += 1
	end
	
end

puts largest_prime
largest_prime