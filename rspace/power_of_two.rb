def is_power_of_two?(num)
    
  x = num % 2 
  
  if(num ==0)
    return false
  elsif(num == 1)
    return true
  elsif(x != 0)
    return false
end

  idx = 2
  while(idx <= num)
    if(idx == num)
      return true
    elsif((idx * 2 > num) && (idx != num))
      return false
    end
    idx = idx * 2
  end
end