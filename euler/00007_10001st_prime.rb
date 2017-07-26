=begin
10001st prime
Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

def is_prime num
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

prime_count = 1
num = 1

while prime_count != 10001
	num += 2
	if is_prime num
		prime_count += 1
	end
end
puts num

