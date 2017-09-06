=begin
Special Pythagorean triplet
Problem 9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end



=begin
	Number theory dictates
	When m and n are any two positive integers (m < n):

    a = n^2 - m^2
    b = 2nm
    c = n^2 + m^2
	(Euclid's formula)

	Then a, b, and c form a Pythagorean Triple. 
	
	a + b + c = 1000
	n^2 -m^2 + 2nm +n^2 +m^2 = 1000
	2(n^2) + 2nm = 1000
	n(n + m) = 500
	
=end

a = 0
b = 0
c = 0

(1..500).each do |m|
	n = m + 1
	x = n*(n+m)
	begin
		if x == 500
			a = n**2 - m**2
			b = 2*n*m
			c = n**2 + m**2
			break
		end
		n = n + 2
		x = n*(n+m)		
	end while x <= 500
end

#Gets a and b the wrong way round...
puts "a = #{a}, b = #{b}, c= #{c}, abc = #{a*b*c}"