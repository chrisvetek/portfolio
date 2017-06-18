def palindrome?(string)
  len = string.length
  newstr = ""
  while(len > 0)
	newstr = newstr + string[len-1]
	len = len - 1
	end
  if(string == newstr)
	return true
  else
	return false
  end
	
end