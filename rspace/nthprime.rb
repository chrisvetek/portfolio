def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  count = 0 
  i = 2
  prim = 0 
  
  while(count < n)
    if(is_prime?(i) == true)
      count = count + 1 
      if(count == n)
        return i 
      end 
    end 
    i = i + 1 
  end 
  return count 
end