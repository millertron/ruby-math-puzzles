
n1=999
n2=999

largest_palindrome = 1
largest_n1 = 1
largest_n2 = 1

while n1 >= 100
	num = n1*n2
	if num.to_s.reverse.to_i == num && num > largest_palindrome
		largest_palindrome = num
		largest_n1 = n1
		largest_n2 = n2
	end
	
	
	if (n2 > 1)
		n2 -= 1
	else
		n1 -= 1
		n2 = n1
	end
end

puts "#{largest_n1} x #{largest_n2} = #{largest_palindrome}"
largest_palindrome
		