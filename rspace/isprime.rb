def is_prime?(number)

  i = 2 
  count = 0
  
  if(number < 4)
    z = true 
  end 
  
  while(i < number)
    
    if(number%i == 0)
      count = count + 1
	end 
	
	i = i + 1
	
  end 
  
  if(count > 0)
	puts(false)
  else 
	puts(true) 
  end 
  
  
end

is_prime?(17)
is_prime?(21)