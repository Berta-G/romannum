def roman_to_decimal(romannum)

	nums = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1}

	newarr = romannum.split("").map { |n| nums[n.to_sym] }


	# (0..newarr.length-2).inject(0) { |total, i| total +=  newarr[i] < newarr[i+1] ? -newarr[i] : newarr[i] } + newarr.last

	i = 0 



	while i < newarr.length - 1
		newarr[i] *= -1 if newarr[i] < newarr[i+1]  
		i += 1
	end

	newarr.inject (:+)
	

end


# roman_to_decimal(ARGV.first)
puts roman_to_decimal("I")