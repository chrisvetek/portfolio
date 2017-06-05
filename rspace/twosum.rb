def two_sum(nums)
idx = 0
idx2 = 0
numsum = [0,0]

while(idx < nums.length)
	
	x = nums[idx]
	
	while(idx2 < nums.length)
		
		y = nums[idx2]
		
		if(x == -y)
		
			numsum[0] = idx
			numsum[1] = idx2
			return numsum
		end 
	idx2 = idx2 + 1
	end 
	
idx = idx + 1
idx2 = 0
end

return nil
end

two_sum([1,3,5,-3])

