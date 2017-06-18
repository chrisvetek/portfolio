def crazy_nums(maxnum)
arr = []
i = 1
while(i < maxnum)
	
	if(i % 3 == 0)
	   if(i % 5 != 0)
		  arr.push(i)
	   end 
	end 
	
	if(i % 5 ==0)
	   if(i % 3 !=0)
	      arr.push(i)
	   end 
	   
	end 
	i = i + 1
end 
puts(arr.to_s)
return arr
	
end


crazy_nums(3)
crazy_nums(10)
crazy_nums(20)