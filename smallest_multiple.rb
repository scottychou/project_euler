def divisible(smallest) #method that checks if divisible by 1..20
	final = true
	(1..20).each do |num|
		if smallest % num != 0
			final = false
			break
		end
	end
	final
end

max = (1..20).inject(:lcm)
p max
# ====> 232792560

p divisible(max)
# ====> Just to double check, and it is true