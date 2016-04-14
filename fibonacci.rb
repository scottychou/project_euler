fibonacci = []
fibonacci << 1
fibonacci << 2

while fibonacci[-1] < 4000000
	if (fibonacci[-1] + fibonacci[-2]) < 4000000
		fibonacci << (fibonacci[-1] + fibonacci[-2])
	else
		break
	end
end

fibonacci_evens = []
fibonacci.each do |num|
	if num % 2 == 0
		fibonacci_evens << num
	end
end

p fibonacci_evens
p fibonacci_evens.reduce(:+)
# ====> 4613732