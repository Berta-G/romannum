def roman_to_decimal(romannum)

	arr = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1}

	newarr = romannum.split("").map { |n| arr[n.to_sym] }
	
	i = 0 
	total = 0

	while i < newarr.length - 1
		newarr[i] *= -1 if newarr[i] < newarr[i+1]  
		i += 1
	end

	puts newarr.inject (:+)
	

end


roman_to_decimal(ARGV.first)