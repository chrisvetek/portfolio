# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  i = 1
  j = 1 
  arr1 = [] 
  arr2 = [] 
  
  if(number1 % number2 == 0)
    return number2
  elsif(number2 % number1 == 0)
    return number1
  end 
  
  while(i < number1)
    if(number1 % i == 0)
		arr1.push(i) 
	end 
	i = i + 1 
  end 
  
  while(j < number2)
	if(number2 % j ==0)
		arr2.push(j)
	end
	j = j + 1
  end 
  
  if(arr1.length > arr2.length)
	count = arr1.length
	while(count > 0)
		if(arr2[arr2.length-1] == arr1[count])
			return arr1[count]
		end 
		count = count -1
	end 
  elsif(arr2.length > arr1.length)
	count = arr2.length
	while(count > 0)
		if(arr1[arr1.length-1] == arr2[count])
			return arr2[count]
		end 
		count = count -1
	end 
  else
	return 1
  end 
end 

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #greatest_commmon_factor")
puts("===============================================")
    puts(
      'greatest_common_factor(3, 9) == 3: ' +
      (greatest_common_factor(3, 9) == 3).to_s
    )
    puts(
      'greatest_common_factor(16, 24) == 8: ' +
      (greatest_common_factor(16, 24) == 8).to_s
    )
    puts(
      'greatest_common_factor(3, 5) == 1: ' +
      (greatest_common_factor(3, 5) == 1).to_s
    )
	 puts(
      'greatest_common_factor(25, 40) == 5: ' +
      (greatest_common_factor(25, 40) == 5).to_s
    )
puts("===============================================")