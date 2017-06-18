def most_common_letter(string)
  count = 1
  i = 0 
  j = 1 
  temp = 1
  arr = []
  
  while(i < string.length)
    while(j < string.length)
	
      if(string[j] == string[i])
        count = count + 1
      end
      j = j + 1
      
    end
	
    if(count > temp)
      temp = count
	  arr[0] = string[i]
      arr[1] = temp
    end
    
    j = 1
    i = i + 1 
    count = 0
	
  end 
  puts(arr.to_s)
  return arr
end

most_common_letter("leather")
most_common_letter("alta")
most_common_letter("abca")