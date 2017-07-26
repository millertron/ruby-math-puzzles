def is_divisible_by_range num, max_factor
	(1..max_factor).each do |x|
		if num%x != 0
			return false
		end
	end
	true
end

num = 40
max_factor = 20
while true
		if is_divisible_by_range num, max_factor
			puts num
			break
		else
			num = num + max_factor
		end
end
