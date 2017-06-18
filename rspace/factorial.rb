def factorial(n)
	if(n==0)
		return 1
		end
	i = 1
	j = 1
	while(i <= n)
		j = j * i
		i = i + 1
	end
	return j
end

puts(factorial(4))