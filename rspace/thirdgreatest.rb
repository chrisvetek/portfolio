def third_greatest(nums)
	
idx = 0
idx2 = 0
temp = 0

while(idx < nums.length - 1)

	while(idx2 < nums.length - 1)
	
			if(nums[idx2] > nums[idx2+1])
				temp = nums[idx2]
				nums[idx2] = nums[idx2 + 1]
				nums[idx2 + 1] = temp
			end 
		
		idx2 = idx2 + 1
		
	end 
	idx2 = 0
	idx = idx + 1
end

puts(nums[nums.length - 3])
return(nums[nums.length - 3])

end

#test
third_greatest([3,2,5,1,8])
