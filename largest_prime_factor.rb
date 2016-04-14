require 'prime' # for access to the prime? method

num = 6008514755143
divisor = 2

start = num/divisor
largest_prime = nil

if num.prime?
	largest_prime = num
end

until largest_prime
	if num % start == 0 && start.prime?
		p "you win, #{start} is prime"
		largest_prime = start
	else
		p start
		divisor += 1
		start = num/divisor
	end
end

p largest_prime

# ====> 175374763