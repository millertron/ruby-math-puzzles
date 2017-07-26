sum = 2

fnum = 2
fnum1 = 1
fnum2 = 2

while (fnum < 4000000)
	fnum = fnum1 + fnum2
	
	if fnum % 2 == 0
		sum += fnum
	end
	
	fnum1 = fnum2
	fnum2 = fnum	
end	

puts sum

sum