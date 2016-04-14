multiple = []

(1...1000).each do |num|
	if num % 3 == 0 || num % 5 == 0
		multiple << num
	end
end

p multiple.reduce(:+)

# ====> 233168