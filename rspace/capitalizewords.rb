def capitalize_words(string)

  s = string.split(" ")
  
  i = 0
  
  while(i < s.length)
  
	if(s[i].length == 1)
		s[i] = s[i].upcase
	end 
	
	
	if(s[i].length > 1)
		s[i][0] = s[i][0].upcase
	end 
	
  i = i + 1
  end 
  
  newS = ''
  idx = 0 
  while(idx < s.length) 
	if(idx == 0)
		newS = newS + s[idx]
		idx = idx + 1
	end
	newS = newS + ' ' + s[idx]
	idx = idx + 1
  end 
  
  puts(newS)
  return newS
  
end

capitalize_words("this is a sentence")