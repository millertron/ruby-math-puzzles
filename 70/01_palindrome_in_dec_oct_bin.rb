# The smallest number greater than 10 that is a palindrome in binary, decimal and octal format

num = 11
while true
	if num.to_s == num.to_s.reverse && num.to_s(8) == num.to_s(8).reverse && num.to_s(2) == num.to_s(2).reverse
		puts "Smallest palindrome: #{num} (decimal), #{num.to_s(8)} (octal), #{num.to_s(2)} (binary)"
		break
	else
		num = num + 2 #only want odd numbers
	end
end
