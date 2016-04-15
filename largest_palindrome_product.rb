min = 100*100
max = 999*999

def palindrome?(str)
  str == str.reverse
end

biggest = 100001
i=999
j=999
while i >= 900  # I could set this to 100, but the program will run significantly longer
	if 100001 >= i*999
		break
	end
	while j >= i
		sum = i * j
		if biggest < sum && palindrome?(sum.to_s)
			biggest = sum
			num1 = i
			num2 = j
		end
		j -= 1
	end
	j = 999
	i -= 1
end

p biggest
p num1
p num2
# ====> 906609
# ====> 913
# ====> 993
