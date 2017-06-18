def scramble_string(string, positions)
  idx = 0
  idx2 = 0 
  newS = ''
  while(idx < string.length)
	newS[idx] = string[idx]
	idx = idx + 1
  end 
  
  idx = 0
  
  while(idx < string.length)
    while(idx2 < positions.length)
      if(idx == positions[idx2])
        newS[idx2] = string[idx]
      end 
      idx2 = idx2 + 1 
    end 
    idx2 = 0 
    idx = idx + 1 
  end
  puts(newS)
  return newS
end

scramble_string("abcd", [3, 1, 2, 0]) # returns "dbca"